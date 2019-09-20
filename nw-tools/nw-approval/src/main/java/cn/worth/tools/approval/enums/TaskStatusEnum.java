package cn.worth.tools.approval.enums;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-09-17
 * @description
 **/
public enum TaskStatusEnum {
    RUNNING(0, "进行中"),PASS(1, "通过"),REFUSE(2, "拒绝"),CANCEL(3, "取消"),RECALL(4, "撤回");

    private String desc;
    private int code;

    TaskStatusEnum(int code, String desc) {
        this.code = code;
        this.desc = desc;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }
}
