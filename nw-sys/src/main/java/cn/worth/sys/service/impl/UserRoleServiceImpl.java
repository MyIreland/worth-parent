package cn.worth.sys.service.impl;

import cn.worth.common.exception.BusinessException;
import cn.worth.sys.domain.UserRole;
import cn.worth.sys.mapper.UserRoleMapper;
import cn.worth.sys.service.IUserRoleService;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
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

    @Override
    public int deleteByUserId(Long userId) {
        if(null == userId){
            throw new BusinessException("userId is null");
        }
        EntityWrapper wrapper = new EntityWrapper();
        wrapper.eq("user_id", userId);

        return baseMapper.delete(wrapper);
    }
}
