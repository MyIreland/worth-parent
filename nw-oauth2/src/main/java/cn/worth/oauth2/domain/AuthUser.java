package cn.worth.oauth2.domain;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Getter;
import lombok.Setter;
import java.io.Serializable;
import java.util.Date;

@Getter
@Setter
@TableName("sys_user")
public class AuthUser extends Model<AuthUser> {

    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    /**
     * 用户名
     */
    private String username;
    /**
     * 密码
     */
    private String password;
    /**
     * 性别 1-男 2-女
     */
    private Integer sex;
    /**
     * 0管理员1普通用户2微信用户
     */
    private Integer type;
    /**
     * 随机盐
     */
    private String salt;
    /**
     * 姓名
     */
    @TableField("real_name")
    private String realName;
    /**
     * 手机
     */
    private String mobile;
    /**
     * 头像
     */
    private String avatar;
    /**
     * 机构ID
     */
    @TableField("custom_id")
    private Long customId;
    /**
     * 部门ID
     */
    @TableField("dept_id")
    private Long deptId;
    /**
     * 状态 0-正常 1-锁住 2- 过期
     */
    private Integer status;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 创建时间
     */
    @TableField("gmt_create")
    private Date gmtCreate;
    /**
     * 修改时间
     */
    @TableField("gmt_update")
    private Date gmtUpdate;
    /**
     * 0-正常，1-删除
     */
    @TableField("del_flag")
    private Integer delFlag;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "User{" +
        ", id=" + id +
        ", username=" + username +
        ", password=" + password +
        ", realName=" + realName +
        ", sex=" + sex +
        ", email=" + email +
        ", mobile=" + mobile +
        ", deptId=" + deptId +
        "}";
    }
}