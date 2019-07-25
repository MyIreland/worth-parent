package cn.worth.auth.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
/**
 * Spring-Security 配置<br>
 * 具体参考: https://github.com/lexburner/oauth2-demo
 * http://blog.didispace.com/spring-security-oauth2-xjf-1/
 * https://www.cnblogs.com/cjsblog/p/9152455.html
 * https://segmentfault.com/a/1190000014371789 (多种认证方式)
 *
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/11
 * @Description:
 * @Modified by:
 */
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true) //启用方法级的权限认证
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    //通过自定义userDetailsService 来实现查询数据库，手机，二维码等多种验证方式
    @Autowired
    private UserDetailsService userDetailsService;
    /**
     * 用户验证
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.parentAuthenticationManager(authenticationManagerBean());
        auth.userDetailsService(userDetailsService);
    }

    /**
     * Spring Boot 2 配置，这里要bean 注入
     */
    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

}
