package cn.worth.tools.approval.enums;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-09-17
 * @description
 **/
public enum TaskProcessStatusEnum {
    WAIT(0, "待审核"),AGREE(1, "通过"),REFUSE(2, "驳回");

    private final int code;
    private final String desc;

    TaskProcessStatusEnum(int code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public int getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }
}
