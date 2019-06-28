package cn.worth.auth.config;

import cn.worth.auth.consts.ShiroConstant;
import cn.worth.auth.listener.ShiroOnlineCountSessionListener;
import cn.worth.auth.redis.RedisCacheManager;
import cn.worth.auth.redis.RedisManager;
import cn.worth.auth.redis.RedisSessionDAO;
import lombok.Getter;
import lombok.Setter;
import org.apache.shiro.session.SessionListener;
import org.apache.shiro.session.mgt.eis.MemorySessionDAO;
import org.apache.shiro.session.mgt.eis.SessionDAO;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.DependsOn;
import javax.servlet.Filter;
import java.util.*;

/**
 * @Author: MyIreland
 * @Date: 2019/6/13 16:05
 * @Version 1.0
 */
@Getter
@Setter
@Configuration
@ConfigurationProperties(prefix = "spring.redis")
public class ShiroConfig {

    private String host;
    private String password;
    private int port;
    private int timeout;
    @Value("${shiro.cache.expire}")
    private int expire;
    @Value("${shiro.cache.type}")
    private String cacheType;
    @Value("${shiro.cache.prefix}")
    private String shiroKeyPrefix;
    @Value("${worth.env.redis.key.prefix}")
    private String envRedisKeyPrefix;
    @Autowired
    private ShiroFilterUrlRuleMapProperties filterUrlRuleMapProperties;

    /**
     * 加这个为了控制生命周期 加了static让他先加载
     * @return
     */
    @Bean
    public static LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
        return new LifecycleBeanPostProcessor();
    }

    @Bean
    public UserRealm userRealm(){
        UserRealm userRealm = new UserRealm();
        userRealm.setCachingEnabled(true);
        userRealm.setCredentialsMatcher(retryLimitHashedCredentialsMatcher());
        return userRealm;
    }

    @Bean
    public DefaultWebSecurityManager securityManager() {
        DefaultWebSecurityManager manager = new DefaultWebSecurityManager();
        // 使用自己的realm
        manager.setRealm(userRealm());

        /*
         * 关闭shiro自带的session，详情见文档
         * http://shiro.apache.org/session-management.html#SessionManagement-StatelessApplications%28Sessionless%29
         */
//        DefaultSubjectDAO subjectDAO = new DefaultSubjectDAO();
//        DefaultSessionStorageEvaluator defaultSessionStorageEvaluator = new DefaultSessionStorageEvaluator();
//        defaultSessionStorageEvaluator.setSessionStorageEnabled(false);
//        subjectDAO.setSessionStorageEvaluator(defaultSessionStorageEvaluator);
//        manager.setSubjectDAO(subjectDAO);

        manager.setSessionManager(sessionManager());
        // 自定义缓存实现 使用redis
        if (ShiroConstant.CACHE_TYPE_REDIS.equals(cacheType)) {
            manager.setCacheManager(rediscacheManager());
        } else {
            manager.setCacheManager(rediscacheManager());
        }

        return manager;
    }

    @Bean("shiroFilter")
    public ShiroFilterFactoryBean shiroFilterFactoryBean(DefaultWebSecurityManager securityManager) {
        ShiroFilterFactoryBean factoryBean = new ShiroFilterFactoryBean();

        // 添加自己的过滤器并且取名为jwt
        Map<String, Filter> filterMap = new HashMap<>();
//        filterMap.put("jwt", new JWTFilter());
        factoryBean.setFilters(filterMap);

        factoryBean.setSecurityManager(securityManager);
        /*
         * 自定义url规则
         * http://shiro.apache.org/web.html#urls-
         */
        Map<String, String> filterRuleMap = new HashMap<>();
        LinkedList<String> ignoreUrls = filterUrlRuleMapProperties.getIgnoreUrls();
        for (String ignoreUrl : ignoreUrls) {
            filterRuleMap.put(ignoreUrl, "anon");
        }
        // 所有请求通过我们自己的JWT Filter
//        filterRuleMap.put("/**", "jwt");

        factoryBean.setFilterChainDefinitionMap(filterRuleMap);
        return factoryBean;
    }

    /**
     * 下面的代码是添加注解支持
     */
    @Bean
    @DependsOn("lifecycleBeanPostProcessor")
    public DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator() {
        DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator = new DefaultAdvisorAutoProxyCreator();
        // 强制使用cglib，防止重复代理和可能引起代理出错的问题
        // https://zhuanlan.zhihu.com/p/29161098
        defaultAdvisorAutoProxyCreator.setProxyTargetClass(true);
        return defaultAdvisorAutoProxyCreator;
    }

    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(DefaultWebSecurityManager securityManager) {
        AuthorizationAttributeSourceAdvisor advisor = new AuthorizationAttributeSourceAdvisor();
        advisor.setSecurityManager(securityManager);
        return advisor;
    }

    /**
     * cacheManager 缓存 redis实现
     * 使用的是shiro-redis开源插件
     *
     * @return
     */
    public RedisCacheManager rediscacheManager() {
        RedisCacheManager redisCacheManager = new RedisCacheManager();
        redisCacheManager.setKeyPrefix(envRedisKeyPrefix + shiroKeyPrefix + ":");
        redisCacheManager.setRedisManager(redisManager());
        return redisCacheManager;
    }

    /**
     * 配置shiro redisManager
     *
     * @return
     */
    @Bean
    public RedisManager redisManager() {
        RedisManager redisManager = new RedisManager();
        redisManager.setHost(host);
        redisManager.setPort(port);
        redisManager.setExpire(expire);
        redisManager.setTimeout(timeout);// 配置连接超时时间
        redisManager.setPassword(password);
        return redisManager;
    }

    /**
     * RedisSessionDAO shiro sessionDao层的实现 通过redis
     * 使用的是shiro-redis开源插件
     */
    @Bean
    public RedisSessionDAO redisSessionDAO() {
        RedisSessionDAO redisSessionDAO = new RedisSessionDAO();
        redisSessionDAO.setRedisManager(redisManager());
        return redisSessionDAO;
    }

    @Bean
    public SessionDAO sessionDAO() {
        if (ShiroConstant.CACHE_TYPE_REDIS.equals(cacheType)) {
            return redisSessionDAO();
        } else {
            return new MemorySessionDAO();
        }
    }

    /**
     * shiro session的管理
     */
    @Bean
    public DefaultWebSessionManager sessionManager() {
        DefaultWebSessionManager sessionManager = new DefaultWebSessionManager();
        sessionManager.setGlobalSessionTimeout(timeout);
        sessionManager.setSessionDAO(sessionDAO());
        Collection<SessionListener> listeners = new ArrayList<>();
        listeners.add(sessionListener());
        sessionManager.setSessionListeners(listeners);
        return sessionManager;
    }

    /**
     * 配置session监听
     * @return
     */
    @Bean("sessionListener")
    public ShiroOnlineCountSessionListener sessionListener(){
        ShiroOnlineCountSessionListener sessionListener = new ShiroOnlineCountSessionListener();
        return sessionListener;
    }

    /**
     * 配置密码比较器
     * @return
     */
    @Bean
    public RetryLimitHashedCredentialsMatcher retryLimitHashedCredentialsMatcher(){
        RetryLimitHashedCredentialsMatcher retryLimitHashedCredentialsMatcher = new RetryLimitHashedCredentialsMatcher(rediscacheManager());

        //如果密码加密,可以打开下面配置
        //加密算法的名称
        //retryLimitHashedCredentialsMatcher.setHashAlgorithmName("MD5");
        //配置加密的次数
        //retryLimitHashedCredentialsMatcher.setHashIterations(1024);
        //是否存储为16进制
        //retryLimitHashedCredentialsMatcher.setStoredCredentialsHexEncoded(true);

        return retryLimitHashedCredentialsMatcher;
    }
}