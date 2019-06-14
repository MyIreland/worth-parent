package cn.worth.common.vo;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

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
    /**
     * 操作权限列表
     */
    private Set<MenuVO> permissions = new HashSet<>();
}
