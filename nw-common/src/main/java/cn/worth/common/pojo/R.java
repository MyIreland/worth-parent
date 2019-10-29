package cn.worth.common.pojo;

import cn.worth.common.enums.RCodeEnum;
import java.io.Serializable;
import java.util.Date;

/**
 * 统一响应响应信息主体
 * @param <T>
 */
public class R<T> implements Serializable {

    /**
     * 附带信息
     */
    private String message = "";

    /**
     * 状态码
     */
    private int code = RCodeEnum.SUCCESS.getCode();

    /**
     * 时间戳
     */
    private long timestamp = new Date().getTime();

    /**
     * 请求地址
     */
    private String path;

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

    public R(RCodeEnum rCodeEnum) {
        this.code = rCodeEnum.getCode();
        this.message = rCodeEnum.getMsg();
    }

    public R(T data, String message) {
        super();
        this.data = data;
        this.message = message;
    }

    public R(Throwable e) {
        super();
        this.message = e.getMessage();
        this.code = RCodeEnum.BIZ_EXCEPTION.getCode();
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
        r.setCode(RCodeEnum.BIZ_EXCEPTION.getCode());
        r.setMessage(message);

        return r;
    }

    public static R fail(RCodeEnum codeEnum) {
        R r = new R();
        r.setCode(codeEnum.getCode());
        r.setMessage(codeEnum.getMsg());
        return r;
    }

    public static R fail(int code, String message) {
        R r = new R();
        r.setCode(code);
        r.setMessage(message);

        return r;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
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

    public long getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(long timestamp) {
        this.timestamp = timestamp;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
