package cn.worth.common.vo;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.enums.IdType;
import lombok.Getter;
import lombok.Setter;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
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
    private String name;
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

    private Date gmtCreate;
    private Date gmtModified;
    /**
     * 状态 0:禁用，1:正常
     */
    private Integer state;
    /**
     * 角色列表
     */
    private Set<RoleVo> roles = new HashSet<>();

}
