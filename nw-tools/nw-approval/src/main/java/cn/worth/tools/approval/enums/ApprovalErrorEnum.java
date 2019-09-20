package cn.worth.tools.approval.enums;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-09-18
 * @description
 **/
public enum ApprovalErrorEnum {
    TASK_NOT_FOUND(500, "任务未找到"),
    TASK_OPTION_USER_ERROR(500, "无权操作该审批"),
    TASK_STATUS_ERROR(500, "任务状态错误")
    ;

    private final int code;
    private final String desc;

    ApprovalErrorEnum(int code, String desc) {
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
