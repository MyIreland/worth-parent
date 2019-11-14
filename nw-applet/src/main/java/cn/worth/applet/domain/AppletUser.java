package cn.worth.applet.domain;

import com.baomidou.mybatisplus.enums.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;
import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 * 
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-11-14
 */
@Getter
@Setter
@TableName("applet_user")
public class AppletUser extends Model<AppletUser> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    /**
     * 微信名
     */
    private String nickname;
    /**
     * 省
     */
    private String province;
    /**
     * 性别
     */
    private String gender;
    /**
     * 城市
     */
    private String city;
    /**
     * 国家
     */
    private String country;
    /**
     * 头像地址
     */
    @TableField("avatar_url")
    private String avatarUrl;
    /**
     * 微信openId
     */
    @TableField("open_id")
    private String openId;
    /**
     * 用户状态 0-未知 1-正常  
     */
    private Integer status;
    /**
     * 创建时间
     */
    @TableField("gmt_create")
    private Date gmtCreate;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
