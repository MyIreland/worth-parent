package cn.worth.auth.config;

import cn.worth.common.enums.UserStateEnum;
import cn.worth.common.utils.JWTUtil;
import cn.worth.common.vo.MenuVO;
import cn.worth.common.vo.RoleVo;
import cn.worth.common.vo.UserVO;
import cn.worth.sys.service.IUserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.HashSet;
import java.util.Set;

/**
 * @Author: MyIreland
 * @Date: 2019/6/13 16:32
 * @Version 1.0
 */
public class UserRealm extends AuthorizingRealm {

    @Autowired
    private IUserService userService;

    /**
     * 用户认证器
     *
     * @param authenticationToken
     * @return
     * @throws AuthenticationException
     */

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String userName = token.getUsername();

        // 解密获得username，用于和数据库进行对比
//        String username = JWTUtil.getUsername(userName);
//        if (username == null) {
//            throw new AuthenticationException("token invalid");
//        }
        UserVO userVO = userService.loadUserByUsername(userName);

        if (null == userVO) {
            throw new UnknownAccountException();
        }

        if (UserStateEnum.LOCKED.ordinal() == userVO.getState()) {
            throw new LockedAccountException();
        }

        SimpleAuthenticationInfo userRealm = new SimpleAuthenticationInfo(userVO, userVO.getPassword(), getName());

        return userRealm;
    }

    /**
     * 用户授权器 checkRole,checkPermission之类的
     *
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String username = JWTUtil.getUsername(principalCollection.toString());
        UserVO userVO = userService.loadUserByUsername(username);
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();

        Set<RoleVo> roles = userVO.getRoles();
        Set<String> roleSigns = new HashSet<>();
        Set<String> perms = new HashSet<>();
        for (RoleVo role : roles) {
            roleSigns.add(role.getRoleSign());
            Set<MenuVO> permissions = role.getPermissions();
            for (MenuVO each : permissions) {
                perms.add(each.getPerms());
            }
        }

        simpleAuthorizationInfo.addRoles(roleSigns);
        simpleAuthorizationInfo.addStringPermissions(perms);
        return simpleAuthorizationInfo;
    }

    @Override
    public String getName() {
        return "UserRealm";
    }


}
