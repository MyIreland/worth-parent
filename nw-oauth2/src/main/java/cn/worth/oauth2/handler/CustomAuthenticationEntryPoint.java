package cn.worth.oauth2.handler;

import cn.worth.common.constant.CommonConstant;
import cn.worth.common.pojo.R;
import com.alibaba.fastjson.JSON;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * AuthenticationEntryPoint 用来解决匿名用户访问无权限资源时的异常
 */
@Component
public class CustomAuthenticationEntryPoint implements AuthenticationEntryPoint {

    private final Logger log = LoggerFactory.getLogger(CustomAuthenticationEntryPoint.class);


    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authException) throws IOException, ServletException {
        log.info("授权失败，禁止访问 {}", request.getRequestURI());

        response.setCharacterEncoding(CommonConstant.UTF8);
        response.setContentType(CommonConstant.CONTENT_TYPE);
        R<String> result = new R<>(new AccessDeniedException(authException.getMessage()));
        result.setCode(401);
        response.setStatus(HttpStatus.UNAUTHORIZED.value());
        String json = JSON.toJSONString(result);
        response.getWriter().print(json);
    }
}