package cn.worth.common.enums;

import lombok.Getter;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-11-14
 * @description
 **/
@Getter
public enum ErrorEnum {
    PARAM_ILLEGAL(11001, "参数错误")
    ;

    private final int code;
    private final String desc;

    ErrorEnum(int code, String desc) {
        this.code = code;
        this.desc = desc;
    }

}
