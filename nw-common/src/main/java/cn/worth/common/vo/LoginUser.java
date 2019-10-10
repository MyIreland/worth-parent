package cn.worth.common.vo;

import cn.worth.common.enums.MenuTypeEnum;
import cn.worth.common.utils.CollectionUtils;
import lombok.Getter;
import lombok.Setter;
import org.apache.commons.lang.StringUtils;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
public class LoginUser implements Serializable {

    /**
     * 主键ID
     */
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
     * 租户ID
     */
    private Long customId;
    /**
     * 部门ID
     */
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
    private Date gmtCreate;
    /**
     * 修改时间
     */
    private Date gmtUpdate;
    /**
     * 0-正常，1-删除
     */
    private Integer delFlag;
    /**
     * 角色列表
     */
    private Set<RoleVo> roles = new HashSet<>();

    private Set<String> perms = new HashSet<>();

    public Set<String> getPerms() {
        if(CollectionUtils.isEmpty(perms)){
            for (RoleVo role : roles) {
                Set<MenuVO> permissions = role.getPermissions();
                for (MenuVO permission : permissions) {
                    String perms = permission.getPermission();
                    Integer type = permission.getType();
                    MenuTypeEnum menuTypeByCode = MenuTypeEnum.getMenuTypeByCode(type);
                    if(MenuTypeEnum.BUTTON == menuTypeByCode && StringUtils.isNotBlank(perms)){
                        this.perms.add(perms);
                    }
                }
            }
        }
        return perms;
    }
}
