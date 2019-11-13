package cn.worth.sys.pojo;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-08-06
 * @description
 **/
@Getter
@Setter
public class UserPojo {
    /**
     * 主键ID
     */
    private Long id;
    /**
     * 用户名
     */
    @NotNull(message = "username is null")
    private String username;
    /**
     * 密码
     */
    @NotNull(message = "password is null")
    private String password;
    /**
     * 性别 1-男 2-女
     */
    private Integer sex;
    /**
     * 0-普通 1-管理员
     */
    @NotNull(message = "type is null")
    private Integer type;
    /**
     * 姓名
     */
    @NotNull(message = "realName is null")
    private String realName;
    /**
     * 手机
     */
    @NotNull(message = "mobile is null")
    private String mobile;
    /**
     * 头像
     */
    private String avatar;
    /**
     * 机构ID
     */
    private Long tenantId;
    /**
     * 部门ID
     */
    private Long deptId;
    /**
     * 邮箱
     */
    private String email;

    /**
     * 角色集合
     */
    private List<Long> roleIds;
}
