package cn.worth.oauth2.service.impl;

import cn.worth.common.utils.CollectionUtils;
import cn.worth.common.vo.LoginUser;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public class UserDetailsImpl implements UserDetails {
    private Long id;
    private String username;
    private String password;
    private String realName;
    private String email;
    private String avatar;
    private Integer status;
    private Set<String> roleCodes;
    private Set<String> permissions;

    public UserDetailsImpl(LoginUser authUser) {
        this.id = authUser.getId();
        this.username = authUser.getUsername();
        this.realName = authUser.getRealName();
        this.password = authUser.getPassword();
        this.email = authUser.getEmail();
        this.status = authUser.getStatus();
        this.avatar = authUser.getAvatar();
        this.permissions = authUser.getPerms();
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Collection<GrantedAuthority> collection = new HashSet<>();
        if (CollectionUtils.isNotEmpty(roleCodes)) {
            roleCodes.forEach(role -> {
                collection.add(new SimpleGrantedAuthority(role));
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

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Set<String> getRoleCodes() {
        return roleCodes;
    }

    public void setRoleCodes(Set<String> roleCodes) {
        this.roleCodes = roleCodes;
    }

    public Set<String> getPermissions() {
        return permissions;
    }

    public void setPermissions(Set<String> permissions) {
        this.permissions = permissions;
    }
}