package cn.worth.common.enums;

/**
 * @Author: MyIreland on.
 * @Description:
 * @Date: 2019/3/22
 */
public enum RCodeEnum {
    SUCCESS(200, "成功"),

    BIZ_EXCEPTION(500, "业务异常"),

    UNLOGIN(201, "未登录"),

    FAIL(100, "失败");
    private Integer code;

    private String msg;


    RCodeEnum(Integer code, String msg) {

        this.code = code;

        this.msg = msg;

    }

    public Integer getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}
