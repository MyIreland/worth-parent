package cn.worth.auth.service;

import cn.worth.auth.domain.SysUserAuthentication;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.List;

/**
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/11
 * @Description:
 * @Modified by:
 */
public class CustomUserDetailService implements UserDetailsService {

    private static final Logger log = LoggerFactory.getLogger(CustomUserDetailService.class);

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        log.info("username is ======================{}", username);
        //return new User(username, "{noop}123456", false, false, null);
        //User user = null;
        SysUserAuthentication user = null;
        if ("admin".equals(username)) {
//            IntegrationAuthentication auth = IntegrationAuthenticationContext.get();
            //这里可以通过auth 获取 user 值
            //然后根据当前登录方式type 然后创建一个sysuserauthentication 重新设置 username 和 password
            //比如使用手机验证码登录的， username就是手机号 password就是6位的验证码{noop}000000
//            System.out.println(auth);
            List<GrantedAuthority> list = AuthorityUtils.createAuthorityList("admin_role"); //所谓的角色，只是增加ROLE_前缀
            user = new SysUserAuthentication();
            user.setUsername(username);
            user.setPassword("{noop}123456");
            user.setAuthorities(list);
            user.setAccountNonExpired(true);
            user.setAccountNonLocked(true);
            user.setCredentialsNonExpired(true);
            user.setEnabled(true);

            //user = new User(username, "{noop}123456", list);
            log.info("---------------------------------------------");
            log.info(user.toJSONString());
            log.info("---------------------------------------------");
            //这里会根据user属性抛出锁定，禁用等异常
        }

        return null;//返回UserDetails的实现user不为空，则验证通过    }
    }
}
