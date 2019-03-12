package cn.worth.auth.pojo;

import cn.worth.common.pojo.UserVO;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Set;

/**
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/12
 * @Description:
 * @Modified by:
 */
public class CustomUserDetails implements UserDetails {
    private Long userId;
    private String username;
    private String password;
    private String email;
    private Integer status;
//    private Set<RoleVO> roles;
    private Set<String> permissions;

    private String orgId;
    private Long deptId;

    public CustomUserDetails(UserVO userVo) {
        this.userId = userVo.getUserId();
        this.username = userVo.getUsername();
        this.password = userVo.getPassword();
        this.status = userVo.getStatus();
        this.email = userVo.getEmail();
        this.orgId = userVo.getOrgId();
        this.deptId = userVo.getDeptId();
        permissions = userVo.getPermissions();
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
//        Collection<GrantedAuthority> collection = new HashSet<>();
//        if (!CollectionUtils.isEmpty(roles)) {
//            roles.forEach(role -> {
//                if (role.getRoleCode().startsWith("ROLE_")) {
//                    collection.add(new SimpleGrantedAuthority(role.getRoleCode()));
//                } else {
//                    collection.add(new SimpleGrantedAuthority("ROLE_" + role.getRoleCode()));
//                }
//            });
//        }
        return null;
    }

    public Long getDeptId() {
        return deptId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public Set<String> getPermissions() {
        return permissions;
    }

    public void setPermissions(Set<String> permissions) {
        this.permissions = permissions;
    }

    public String getOrgId() {
        return orgId;
    }

    public void setOrgId(String orgId) {
        this.orgId = orgId;
    }

    @Override
    public boolean isAccountNonExpired() {
        return false;
    }

    @Override
    public boolean isAccountNonLocked() {
        return false;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return false;
    }

    @Override
    public boolean isEnabled() {
        return false;
    }
}
