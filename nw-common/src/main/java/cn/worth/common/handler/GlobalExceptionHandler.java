package cn.worth.common.handler;

import cn.worth.common.exception.BusinessException;
import cn.worth.common.pojo.R;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.ShiroException;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * @Author: MyIreland on.
 * @Description: 全局的的异常拦截器
 * @Date: 2019/3/22
 */
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

    // 捕捉shiro的异常
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    @ExceptionHandler(ShiroException.class)
    public R handle401(ShiroException e) {
        return R.fail(HttpStatus.UNAUTHORIZED.value(), e.getMessage());
    }
    // 捕捉shiro的异常
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    @ExceptionHandler(UnknownAccountException.class)
    public R handleUnknownAccountException(UnknownAccountException e) {
        return R.fail(HttpStatus.UNAUTHORIZED.value(), "账号不存在");
    }
    // 捕捉shiro的异常
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    @ExceptionHandler(AuthenticationException.class)
    public R handleAuthenticationException(AuthenticationException e) {
        return R.fail(HttpStatus.UNAUTHORIZED.value(), e.getMessage());
    }
    // 捕捉shiro的异常
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    @ExceptionHandler(IncorrectCredentialsException.class)
    public R handleIncorrectCredentialsException(IncorrectCredentialsException e) {
        return R.fail(HttpStatus.UNAUTHORIZED.value(), "用户名或者密码错误");
    }
    // 捕捉shiro的异常
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    @ExceptionHandler(LockedAccountException.class)
    public R handleLockedAccountException(LockedAccountException e) {
        return R.fail(HttpStatus.UNAUTHORIZED.value(), "账号已被锁定");
    }

    /**
     * 业务异常.
     *
     * @param e the e
     * @return R
     */
    @ExceptionHandler(BusinessException.class)
    @ResponseStatus(HttpStatus.OK)
    public R serviceException(BusinessException e) {
        String message = e.getMessage();
        log.info("出现异常信息:{}", message, e);
        return R.fail(message);
    }

    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public R exception(Exception e) {
        String message = e.getMessage();
        log.info("出现异常信息:{}", message, e);
        return R.fail(message);
    }
}
