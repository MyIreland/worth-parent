package cn.worth.auth.pojo;

import cn.worth.common.pojo.UserVO;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import java.util.Collection;

/**
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/12
 * @Description:
 * @Modified by:
 */
public class CustomUserDetails extends UserVO implements UserDetails {
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

    @Override
    public String getPassword() {
        return super.getPassword();
    }

    @Override
    public String getUsername() {
        return super.getUsername();
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
