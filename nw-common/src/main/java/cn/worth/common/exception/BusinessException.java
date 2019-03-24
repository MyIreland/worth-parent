package cn.worth.common.exception;

import cn.worth.common.enums.RCodeEnum;
import lombok.Getter;
import lombok.Setter;

/**
 * @Author: MyIreland on.
 * @Description: 业务异常类
 * @Date: 2019/3/22
 */
@Getter
@Setter
public class BusinessException extends RuntimeException {

    private static final long serialVersionUID = 1L;

    private String msg;
    private int code = RCodeEnum.BIZ_EXCEPTION.getCode();

    public BusinessException(String msg) {
        super(msg);
        this.msg = msg;
    }

    public BusinessException(String msg, int code) {
        super(msg);
        this.msg = msg;
        this.code = code;
    }

    public BusinessException(String message, Throwable cause) {
        super(message, cause);
        this.msg = msg;
    }

    public BusinessException(String message, int code, Throwable cause) {
        super(message, cause);
        this.msg = msg;
        this.code = code;
    }

}
