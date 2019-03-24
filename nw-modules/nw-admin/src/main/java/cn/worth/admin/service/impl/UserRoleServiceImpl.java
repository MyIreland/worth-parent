package cn.worth.admin.service.impl;

import cn.worth.admin.domain.UserRole;
import cn.worth.admin.mapper.UserRoleMapper;
import cn.worth.admin.service.IUserRoleService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户与角色对应关系 服务实现类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
@Service
public class UserRoleServiceImpl extends ServiceImpl<UserRoleMapper, UserRole> implements IUserRoleService {

}
