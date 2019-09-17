package cn.worth.tools.approval.enums;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-09-17
 * @description
 **/
public enum ModelStatusEnum {

    UNUSED(0, "未使用"), INUSE(1, "使用中");

    private int code;
    private String desc;

    ModelStatusEnum(int code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public int getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public void setCode(int code) {
        this.code = code;
    }
}
