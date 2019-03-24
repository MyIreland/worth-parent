package cn.worth.admin.service.impl;

import cn.worth.admin.domain.RoleMenu;
import cn.worth.admin.mapper.RoleMenuMapper;
import cn.worth.admin.service.IRoleMenuService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

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

}
