package cn.worth.sys.service.impl;

import cn.worth.sys.domain.Menu;
import cn.worth.sys.mapper.MenuMapper;
import cn.worth.sys.service.IMenuService;
import cn.worth.common.vo.MenuVO;
import cn.worth.common.utils.CollectionUtils;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

/**
 * <p>
 * 菜单管理 服务实现类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements IMenuService {

    @Override
    public Set<MenuVO> findMenuByRole(String role) {
        return baseMapper.findMenuByRole(role);
    }

    @Override
    public List<MenuVO> findPermsByRoleIds(List<Long> roleIds) {
        if(CollectionUtils.isEmpty(roleIds)) return null;
        return baseMapper.findPermsByRoleIds(roleIds);
    }

    @Override
    public List<MenuVO> findMenusByRoleIds(List<Long> roleIds) {
        if(CollectionUtils.isEmpty(roleIds)) return null;
        return baseMapper.findMenusByRoleIds(roleIds);
    }
}
