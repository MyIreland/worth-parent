package cn.worth.modules.applet.domain;

import com.baomidou.mybatisplus.enums.IdType;
import java.math.BigDecimal;
import java.util.Date;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

/**
 * <p>
 * 会员表
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-10-11
 */
@Getter
@Setter
@TableName("biz_member")
public class BizMember extends Model<BizMember> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    @TableField("level_id")
    private Long levelId;
    /**
     * 用户名
     */
    private String username;
    /**
     * 密码
     */
    private String password;
    /**
     * 昵称
     */
    private String nickname;
    /**
     * 手机号码
     */
    private String phone;
    /**
     * 帐号启用状态:0->禁用；1->启用
     */
    private Integer status;
    /**
     * 注册时间
     */
    @TableField("create_time")
    private Date createTime;
    /**
     * 头像
     */
    private String icon;
    /**
     * 性别：0->未知；1->男；2->女
     */
    private Integer gender;
    /**
     * 生日
     */
    private Date birthday;
    /**
     * 所做城市
     */
    private String city;
    /**
     * 职业
     */
    private String job;
    /**
     * 个性签名
     */
    @TableField("personalized_signature")
    private String personalizedSignature;
    /**
     * 用户来源 1 小程序 2 公众号 3 页面
     */
    @TableField("source_type")
    private Integer sourceType;
    /**
     * 积分
     */
    private Integer integration;
    /**
     * 成长值
     */
    private Integer growth;
    /**
     * 剩余抽奖次数
     */
    @TableField("lucky_count")
    private Integer luckyCount;
    /**
     * 历史积分数量
     */
    @TableField("history_integration")
    private Integer historyIntegration;
    private String avatar;
    private String openid;
    @TableField("invite_code")
    private Long inviteCode;
    /**
     * 余额
     */
    private BigDecimal balance;
    @TableField("school_id")
    private Long schoolId;

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "BizMember{" +
        ", id=" + id +
        ", levelId=" + levelId +
        ", username=" + username +
        ", password=" + password +
        ", nickname=" + nickname +
        ", phone=" + phone +
        ", status=" + status +
        ", createTime=" + createTime +
        ", icon=" + icon +
        ", gender=" + gender +
        ", birthday=" + birthday +
        ", city=" + city +
        ", job=" + job +
        ", personalizedSignature=" + personalizedSignature +
        ", sourceType=" + sourceType +
        ", integration=" + integration +
        ", growth=" + growth +
        ", luckyCount=" + luckyCount +
        ", historyIntegration=" + historyIntegration +
        ", avatar=" + avatar +
        ", openid=" + openid +
        ", inviteCode=" + inviteCode +
        ", balance=" + balance +
        ", schoolId=" + schoolId +
        "}";
    }
}
