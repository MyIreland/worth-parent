package cn.worth.common.pojo;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.Date;

/**
 * @Author: MyIreland on.
 * @Description:
 * @Date: 2019/3/24
 */
@Setter
@Getter
public class RoleVo implements Serializable {

    private Long id;
    /**
     * 角色名称
     */
    private String roleName;
    /**
     * 角色标识
     */
    private String roleSign;
    /**
     * 备注
     */
    private String remark;
    /**
     * 创建时间
     */
    private Date createTime;
    /**
     * 创建时间
     */
    private Date updateTime;
}
