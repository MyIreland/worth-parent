package cn.worth.auth.config;

import cn.worth.auth.consts.ShiroConstant;
import cn.worth.common.enums.UserStateEnum;
import cn.worth.common.utils.RedisClientManager;
import cn.worth.common.vo.UserVO;
import cn.worth.sys.domain.User;
import cn.worth.sys.service.IUserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.credential.SimpleCredentialsMatcher;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheManager;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * 密码比较器
 */
@Slf4j
public class RetryLimitHashedCredentialsMatcher extends SimpleCredentialsMatcher {

    @Autowired
    private IUserService userService;

    private Cache<String, AtomicInteger> passwordRetryCache;

    private static final String PASSWORD_RETRY_CACHE = ShiroConstant.PASSWORD_RETRY_CACHE;

    public RetryLimitHashedCredentialsMatcher(CacheManager cacheManager) {
        passwordRetryCache = cacheManager.getCache(PASSWORD_RETRY_CACHE);
    }

    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
        //获取用户名
        String username = (String)token.getPrincipal();
        //获取用户登录次数
        String retryCacheNameKey = PASSWORD_RETRY_CACHE + username;
        AtomicInteger retryCount = passwordRetryCache.get(retryCacheNameKey);
        if (retryCount == null) {
            //如果用户没有登陆过,登陆次数加1 并放入缓存
            retryCount = new AtomicInteger(0);
            passwordRetryCache.put(retryCacheNameKey, retryCount);
        }
        int retryTimes = retryCount.intValue();

        if (retryTimes > 5) {
            //如果用户登陆失败次数大于5次 抛出锁定用户异常  并修改数据库字段
            UserVO userVO = userService.loadUserByUsername(username);
            if (userVO != null && UserStateEnum.ACTIVE.ordinal() == userVO.getState()){
                //数据库字段 默认为 0  就是正常状态 所以 要改为1
                //修改数据库的状态字段为锁定
                User user = new User();
                user.setId(userVO.getId());
                user.setState(UserStateEnum.LOCKED.ordinal());
                userService.updateById(user);
            }
            log.info("锁定用户" + userVO.getUsername());
            removeRetryAccountLimitKey(retryCacheNameKey);
            //抛出用户锁定异常
            throw new LockedAccountException();
        }
        //判断用户账号和密码是否正确
        boolean matches = super.doCredentialsMatch(token, info);
        if (matches) {
            removeRetryAccountLimitKey(retryCacheNameKey);
        }
        retryTimes++;
        passwordRetryCache.put(retryCacheNameKey, new AtomicInteger(retryTimes));
        return matches;
    }

    private void removeRetryAccountLimitKey(String retryCacheNameKey) {
        //如果正确,从缓存中将用户登录计数 清除
        passwordRetryCache.remove(retryCacheNameKey);
    }

}