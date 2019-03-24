package cn.worth.common.pojo;

import cn.worth.common.enums.RCodeEnum;
import java.io.Serializable;

/**
 * 统一响应响应信息主体
 * @param <T>
 */
public class R<T> implements Serializable {

    private static final long serialVersionUID = 1L;

    private static final int FAIL = RCodeEnum.BIZ_EXCEPTION.getCode();

    private static final int SUCCESS = RCodeEnum.SUCCESS.getCode();

    private String message = RCodeEnum.SUCCESS.getMsg();

    private int code = SUCCESS;

    private Boolean cbkOriginData;

    public Boolean getCbkOriginData() {
        return cbkOriginData;
    }

    public void setCbkOriginData(Boolean cbkOriginData) {
        this.cbkOriginData = cbkOriginData;
    }

    private T data;

    R() {
        super();
    }

    public R(T data) {
        super();
        this.data = data;
    }

    public R(T data, String message) {
        super();
        this.data = data;
        this.message = message;
    }

    public R(Throwable e) {
        super();
        this.message = e.getMessage();
        this.code = FAIL;
    }

    public static R success(String message) {
        R r = new R();
        r.setMessage(message);

        return r;
    }

    public static R success(String message, Object data) {
        R r = new R();
        r.setMessage(message);
        r.setData(data);
        return r;
    }
    public static R success(Object data) {
        R r = new R();
        r.setData(data);
        return r;
    }

    public static R fail(String message) {
        R r = new R();
        r.setCode(FAIL);
        r.setMessage(message);

        return r;
    }

    public static R fail(int code, String message) {
        R r = new R();
        r.setCode(code);
        r.setMessage(message);

        return r;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
