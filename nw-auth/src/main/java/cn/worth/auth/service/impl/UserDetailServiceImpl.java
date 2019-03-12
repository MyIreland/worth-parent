package cn.worth.auth.service.impl;

import cn.worth.auth.pojo.CustomUserDetails;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import java.util.List;

/**
 * 自定义用户认证Service
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/11
 * @Description:
 * @Modified by:
 */
@Component("userDetailService")
public class UserDetailServiceImpl implements UserDetailsService {

    private static final Logger log = LoggerFactory.getLogger(UserDetailServiceImpl.class);

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        log.info("username is ======================{}", username);
        //return new User(username, "{noop}123456", false, false, null);
        //User user = null;
        CustomUserDetails user = null;
        if ("admin".equals(username)) {
//            IntegrationAuthentication auth = IntegrationAuthenticationContext.get();
            //这里可以通过auth 获取 user 值
            //然后根据当前登录方式type 然后创建一个sysuserauthentication 重新设置 username 和 password
            //比如使用手机验证码登录的，username就是手机号 password就是6位的验证码{noop}000000
            List<GrantedAuthority> list = AuthorityUtils.createAuthorityList("admin_role"); //所谓的角色，只是增加ROLE_前缀
            user = new CustomUserDetails();
            user.setUsername(username);
            user.setPassword("{noop}123456");

            //user = new User(username, "{noop}123456", list);
            log.info("---------------------------------------------");
            log.info("login user is {}", user.toString());
            log.info("---------------------------------------------");
            //这里会根据user属性抛出锁定，禁用等异常
        }

        return user;//返回UserDetails的实现user不为空，则验证通过    }
    }
}
