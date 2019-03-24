package cn.worth.admin.service.impl;

import cn.worth.admin.domain.User;
import cn.worth.admin.mapper.UserMapper;
import cn.worth.admin.service.IMenuService;
import cn.worth.admin.service.IUserService;
import cn.worth.common.pojo.MenuVO;
import cn.worth.common.pojo.RoleVo;
import cn.worth.common.pojo.UserVO;
import cn.worth.common.utils.CollectionUtils;
import cn.worth.common.utils.StringUtils;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-09
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    @Autowired
    private IMenuService menuService;

    @Override
    public UserVO loadUserByUsername(String username) {
        User userQuery = new User();
        userQuery.setUsername(username);
        UserVO vo = baseMapper.loadUserByUsername(userQuery);

        if(null != vo){
            Set<RoleVo> roles = vo.getRoles();

            List<Long> roleIds = genRoleIds(roles);

            //设置用户权限
            setUserVoPerms(vo, roleIds);
        }

        return vo;
    }

    private void setUserVoPerms(UserVO vo, List<Long> roleIds) {
        if(CollectionUtils.isNotEmpty(roleIds)){
            List<MenuVO> menuVos = menuService.findMenuByRoleIds(roleIds);
            Set<String> perms = new HashSet<>();
            if(CollectionUtils.isNotEmpty(menuVos)){
                for (MenuVO menuVo : menuVos) {
                    String perm = menuVo.getPerms();
                    if(StringUtils.isNotBlank(perm)){
                        perms.add(perm);
                    }
                }
            }
            vo.setPermissions(perms);
        }
    }

    private List<Long> genRoleIds(Set<RoleVo> roles) {
        List<Long> roleIds = new ArrayList<>();
        if(CollectionUtils.isNotEmpty(roles)){
            for (RoleVo role : roles) {
                roleIds.add(role.getId());
            }
        }
        return roleIds;
    }
}
