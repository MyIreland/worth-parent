package cn.worth.auth.config;

import cn.worth.auth.config.bean.SecurityIgnoreUrlsProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.ExpressionUrlAuthorizationConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;

/**
 * 资源服务器配置
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/11
 * @Description:
 * @Modified by:
 */
@Configuration
@EnableResourceServer
public class ResourceServerConfig extends ResourceServerConfigurerAdapter {

    @Autowired
    private SecurityIgnoreUrlsProperties ignoreUrlsProperties;

    @Value("${spring.application.name}")
    private String resourceId;

    @Override
    public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
        resources.resourceId(resourceId)
                .stateless(true);//设置只允许指定的资源授权访问
    }

    @Override
    public void configure(HttpSecurity http) throws Exception {
        //允许使用iframe 嵌套，避免swagger-ui 不被加载的问题
        http.headers().frameOptions().disable();
        // 由于使用的是JWT，我们这里不需要csrf
        http.csrf().disable();
        // 基于token，所以不需要session
        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

        ExpressionUrlAuthorizationConfigurer<HttpSecurity>.ExpressionInterceptUrlRegistry registry = http.authorizeRequests();

        ignoreUrlsProperties.getUrls().forEach(url -> registry.antMatchers(url).permitAll());
//        registry.anyRequest()
//                .access("@permissionService.hasPermission(request,authentication)");

    }
}
