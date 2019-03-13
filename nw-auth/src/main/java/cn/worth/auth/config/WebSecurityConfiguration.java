package cn.worth.auth.config;

import cn.worth.auth.pojo.CustomUserDetails;
import cn.worth.auth.service.impl.UserDetailServiceImpl;
import cn.worth.common.constant.CommonConstant;
import cn.worth.common.constant.SecurityConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;

import java.util.HashMap;
import java.util.Map;

/**
 * Spring-Security 配置<br>
 * 具体参考: https://github.com/lexburner/oauth2-demo
 * http://blog.didispace.com/spring-security-oauth2-xjf-1/
 * https://www.cnblogs.com/cjsblog/p/9152455.html
 * https://segmentfault.com/a/1190000014371789 (多种认证方式)
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/11
 * @Description:
 * @Modified by:
 */
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true) //启用方法级的权限认证
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter {

    //通过自定义userDetailsService 来实现查询数据库，手机，二维码等多种验证方式
    @Bean
    @Override
    protected UserDetailsService userDetailsService() {
        //采用一个自定义的实现UserDetailsService接口的类
        return new UserDetailServiceImpl();
        /*
            InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
            BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
            String finalPassword = "{bcrypt}"+bCryptPasswordEncoder.encode("123456");
            manager.createUser(User.withUsername("user_1").password(finalPassword).authorities("USER").build());
            finalPassword = "{noop}123456";
            manager.createUser(User.withUsername("user_2").password(finalPassword).authorities("USER").build());
            return manager;
        */
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        //http.authorizeRequests()
        //   .antMatchers("/", "/index.html", "/oauth/**").permitAll() //允许访问
        //   .anyRequest().authenticated() //其他地址的访问需要验证权限
        //   .and()
        //   .formLogin()
        //   .loginPage("/login.html") //登录页
        //   .failureUrl("/login-error.html").permitAll()
        //   .and()
        //   .logout()
        //   .logoutSuccessUrl("/index.html");
        http.authorizeRequests().anyRequest().fullyAuthenticated();
        http.formLogin().loginPage("/login").failureUrl("/login?code=").permitAll();
        http.logout().permitAll();
        http.authorizeRequests().antMatchers("/oauth/authorize").permitAll();
    }

    /**
     * 用户验证
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        super.configure(auth);
    }

    /**
     * Spring Boot 2 配置，这里要bean 注入
     */
    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
//        return new BCryptPasswordEncoder();
    }

    /**
     * 定义token 签名的方式(非对称加密算法来对 Token 进行签名,也可以使用对称加密方式)
     * @return
     */
    @Bean
    public JwtAccessTokenConverter jwtAccessTokenConverter() {
        //对称加密方式
        JwtAccessTokenConverter jwtAccessTokenConverter = new JwtAccessTokenConverter();
        jwtAccessTokenConverter.setSigningKey(CommonConstant.SIGN_KEY);
        return jwtAccessTokenConverter;
    }

    @Autowired
    private RedisConnectionFactory redisConnectionFactory;

    /**
     * tokenstore 定制化处理
     *
     * @return TokenStore
     * 1. 如果使用的 redis-cluster 模式请使用 RedisTokenStore
     * RedisTokenStore tokenStore = new RedisTokenStore();
     * tokenStore.setRedisTemplate(redisTemplate);
     */
    @Bean
    public TokenStore redisTokenStore() {
        RedisTokenStore tokenStore = new RedisTokenStore(redisConnectionFactory);
        tokenStore.setPrefix(SecurityConstants.NW_PREFIX);
        // 2018.09.04添加,解决同一username每次登陆access_token都相同的问题
        tokenStore.setAuthenticationKeyGenerator(new RandomAuthenticationKeyGenerator());

        return tokenStore;
    }

    /**
     * jwt 生成token 定制化处理
     *
     * @return TokenEnhancer
     */
    @Bean
    public TokenEnhancer tokenEnhancer() {
        return (accessToken, authentication) -> {
            final Map<String, Object> additionalInfo = new HashMap<>(2);
            CustomUserDetails user = (CustomUserDetails) authentication.getUserAuthentication().getPrincipal();
            if (user != null) {
                additionalInfo.put("userId", user.getUserId());
            }
            ((DefaultOAuth2AccessToken) accessToken).setAdditionalInformation(additionalInfo);
            return accessToken;
        };
    }
}
