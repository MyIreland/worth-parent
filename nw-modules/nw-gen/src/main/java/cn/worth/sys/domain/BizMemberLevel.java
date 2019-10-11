package cn.worth.sys.domain;

import com.baomidou.mybatisplus.enums.IdType;
import java.math.BigDecimal;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.Version;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 会员等级表
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-10-11
 */
@Data
@Accessors(chain = true)
@TableName("biz_member_level")
public class BizMemberLevel extends Model<BizMemberLevel> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Long id;
    private String name;
    @TableField("growth_point")
    private Integer growthPoint;
    /**
     * 是否为默认等级：0->不是；1->是
     */
    @TableField("default_status")
    private Integer defaultStatus;
    /**
     * 免运费标准
     */
    @TableField("free_freight_point")
    private BigDecimal freeFreightPoint;
    /**
     * 每次评价获取的成长值
     */
    @TableField("comment_growth_point")
    private Integer commentGrowthPoint;
    /**
     * 是否有免邮特权
     */
    @TableField("privilege_free_freight")
    private Integer privilegeFreeFreight;
    /**
     * 是否有签到特权
     */
    @TableField("privilege_sign_in")
    private Integer privilegeSignIn;
    /**
     * 是否有评论获奖励特权
     */
    @TableField("privilege_comment")
    private Integer privilegeComment;
    /**
     * 是否有专享活动特权
     */
    @TableField("privilege_promotion")
    private Integer privilegePromotion;
    /**
     * 是否有会员价格特权
     */
    @TableField("privilege_member_price")
    private Integer privilegeMemberPrice;
    /**
     * 是否有生日特权
     */
    @TableField("privilege_birthday")
    private Integer privilegeBirthday;
    /**
     * 可发文章数
     */
    @TableField("article_count")
    private Integer articleCount;
    /**
     * 可发商品数
     */
    @TableField("goods_count")
    private Integer goodsCount;
    /**
     * 成为会员的价格
     */
    private BigDecimal price;
    private String note;


    @Override
    protected Serializable pkVal() {
        return this.id;
    }

}
