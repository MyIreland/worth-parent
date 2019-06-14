package cn.worth.sys.service.impl;

import cn.worth.common.vo.UserVO;
import cn.worth.sys.domain.User;
import cn.worth.sys.mapper.UserMapper;
import cn.worth.sys.service.IUserService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

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

    @Override
    public UserVO loadUserByUsername(String username) {
        User userQuery = new User();
        userQuery.setUsername(username);
        UserVO vo = baseMapper.loadUserByUsername(userQuery);

        return vo;
    }
}
