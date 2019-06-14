package cn.worth.sys.domain;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Getter;
import lombok.Setter;
import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-17
 */
@Getter
@Setter
@TableName("sys_user")
public class User extends Model<User> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    /**
     * 用户名
     */
    private String username;
    private String password;
    @TableField("real_name")
    private String realName;
    /**
     * 性别
     */
    private Integer sex;
    /**
     * 头像图片id
     */
    @TableField("pic_id")
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
    @TableField("dept_id")
    private Long deptId;
    @TableField("org_id")
    private Long orgId;
    /**
     * 账号是否被锁 0-无 1-被锁 
     */
    private Integer locked;
    /**
     * 账号是否过期 0-无 1-过期
     */
    private Integer expired;

    private String salt;
    @TableField("create_time")
    private Date createTime;
    @TableField("update_time")
    private Date updateTime;
    /**
     * 状态 0:禁用，1:正常
     */
    private Integer state;


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
        ", picId=" + picId +
        ", birth=" + birth +
        ", email=" + email +
        ", mobile=" + mobile +
        ", deptId=" + deptId +
        ", orgId=" + orgId +
        ", locked=" + locked +
        ", expired=" + expired +
        ", createTime=" + createTime +
        ", updateTime=" + updateTime +
        ", state=" + state +
        "}";
    }
}
