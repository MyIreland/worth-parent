package cn.worth.auth.pojo;

import cn.worth.common.vo.RoleVo;
import cn.worth.common.vo.UserVO;
import cn.worth.common.utils.CollectionUtils;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/**
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/12
 * @Description:
 * @Modified by:
 */
public class CustomUserDetails implements UserDetails {
    private Long id;
    private String username;
    private String password;
    private String realName;
    private String email;
    /**
     * 状态 0-正常，1-删除，2-锁住, 3-过期
     */
    private Integer status;
    private Integer expired;
    private Set<RoleVo> roles;
    private Set<String> permissions;
    private Long orgId;
    private Long deptId;

    public CustomUserDetails(UserVO user) {
        this.id = user.getId();
        this.username = user.getUsername();
        this.password = user.getPassword();
        this.status = user.getState();
        this.expired = user.getExpired();
        this.email = user.getEmail();
        this.orgId = user.getOrgId();
        this.deptId = user.getDeptId();
        roles = user.getRoles();
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Collection<GrantedAuthority> collection = new HashSet<>();
        if (!CollectionUtils.isEmpty(roles)) {
            roles.forEach(role -> {
                String roleSign = role.getRoleSign();
                if (roleSign.startsWith("ROLE_")) {
                    collection.add(new SimpleGrantedAuthority(roleSign));
                } else {
                    collection.add(new SimpleGrantedAuthority("ROLE_" + roleSign));
                }
            });
        }
        return collection;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    @Override
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    @Override
    public boolean isAccountNonExpired() {
        return expired != 1;
    }

    @Override
    public boolean isAccountNonLocked() {
        return status != 2;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return status == 0;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Set<RoleVo> getRoles() {
        return roles;
    }

    public void setRoles(Set<RoleVo> roles) {
        this.roles = roles;
    }

    public Set<String> getPermissions() {
        return permissions;
    }

    public void setPermissions(Set<String> permissions) {
        this.permissions = permissions;
    }

    public Long getOrgId() {
        return orgId;
    }

    public void setOrgId(Long orgId) {
        this.orgId = orgId;
    }

    public Long getDeptId() {
        return deptId;
    }

    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }
}
