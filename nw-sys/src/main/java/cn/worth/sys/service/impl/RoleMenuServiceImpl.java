package cn.worth.sys.service.impl;

import cn.worth.common.enums.RCodeEnum;
import cn.worth.common.pojo.R;
import cn.worth.common.utils.CollectionUtils;
import cn.worth.sys.domain.RoleMenu;
import cn.worth.sys.mapper.RoleMenuMapper;
import cn.worth.sys.param.BindRoleMenuParam;
import cn.worth.sys.service.IRoleMenuService;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * <p>
 * 角色与菜单对应关系 服务实现类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
@Service
public class RoleMenuServiceImpl extends ServiceImpl<RoleMenuMapper, RoleMenu> implements IRoleMenuService {

    @Override
    public R<Set<Long>> findMenuIdsByRoleId(Long roleId) {
        Set<Long> menuIdsByRoleId = baseMapper.findMenuIdsByRoleId(roleId);
        return new R<>(menuIdsByRoleId);
    }

    @Override
    @Transactional
    public R bindRoleMenu(BindRoleMenuParam param) {
        Long roleId = param.getRoleId();

        List<RoleMenu> roleMenus = getRoleMenus(param, roleId);

        deleteByRoleId(roleId);

        if(CollectionUtils.isNotEmpty(roleMenus)){
            insertBatch(roleMenus);
        }
        return new R(RCodeEnum.SUCCESS);
    }

    private List<RoleMenu> getRoleMenus(BindRoleMenuParam param, Long roleId) {
        List<Long> menuIds = param.getMenuIds();
        List<RoleMenu> roleMenus = new ArrayList<>();
        for (Long menuId : menuIds) {
            RoleMenu roleMenu = new RoleMenu();
            roleMenu.setRoleId(roleId);
            roleMenu.setMenuId(menuId);
            roleMenus.add(roleMenu);
        }
        return roleMenus;
    }

    private void deleteByRoleId(Long roleId) {
        EntityWrapper<RoleMenu> entityWrapper = new EntityWrapper();
        entityWrapper.eq("role_id", roleId);
        baseMapper.delete(entityWrapper);
    }
}
