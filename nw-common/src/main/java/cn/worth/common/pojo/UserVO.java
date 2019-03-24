package cn.worth.common.pojo;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

/**
 * @author zhangjinkun@xdf.cn
 * @date 2018/7/25
 */
@Getter
@Setter
public class UserVO implements Serializable {

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    /**
     * 用户名
     */
    private String username;
    private String password;
    private String realName;
    /**
     * 性别
     */
    private Integer sex;
    /**
     * 头像图片id
     */
    private Long picId;
    /**
     * 出身日期
     */
    private Date birth;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 手机号
     */
    private String mobile;

    private Long deptId;
    private String deptName;

    private Long orgId;
    private String orgName;
    /**
     * 账号是否被锁 0-无 1-被锁
     */
    private Integer locked;
    /**
     * 账号是否过期 0-无 1-过期
     */
    private Integer expired;
    /**
     * 盐
     */
    private String salt;

    private Date createTime;
    private Date updateTime;
    /**
     * 状态 0:禁用，1:正常
     */
    private Integer status;
    /**
     * 角色列表
     */
    private Set<RoleVo> roles;
    /**
     * 操作权限列表
     */
    private Set<String> permissions;

}
