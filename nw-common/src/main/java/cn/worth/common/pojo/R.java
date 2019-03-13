package cn.worth.common.pojo;

import java.io.Serializable;

/**
 * 响应信息主体
 *
 * @param <T>
 * @author zhangjinkun@xdf.cn
 * @date 2018/07/24
 */
public class R<T> implements Serializable {

    private static final long serialVersionUID = 1L;

    public static final int NO_LOGIN = -1;

    public static final int SUCCESS = 0;

    public static final int FAIL = 1;

    public static final int NO_PERMISSION = 2;

    private String message = "success";

    private int code = SUCCESS;

    private Boolean cbkOriginData;

    public Boolean getCbkOriginData() {
        return cbkOriginData;
    }

    public void setCbkOriginData(Boolean cbkOriginData) {
        this.cbkOriginData = cbkOriginData;
    }

    private T data;

    public R() {
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
