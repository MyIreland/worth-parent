package cn.worth.common.handler;

import cn.worth.common.exception.BusinessException;
import cn.worth.common.pojo.R;
import lombok.extern.slf4j.Slf4j;
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
        log.info("保存全局异常信息 ex={}", message, e);
        return R.fail(message);
    }

    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public R exception(Exception e) {
        String message = e.getMessage();
        log.info("保存全局异常信息 ex={}", message, e);
        return R.fail(message);
    }
}
