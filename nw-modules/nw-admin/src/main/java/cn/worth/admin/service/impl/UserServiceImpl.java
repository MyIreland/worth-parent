package cn.worth.admin.service.impl;

import cn.worth.admin.domain.User;
import cn.worth.admin.mapper.UserMapper;
import cn.worth.admin.service.UserService;
import cn.worth.common.pojo.UserVO;
import com.alibaba.fastjson.JSONObject;
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
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

    @Override
    public UserVO loadUserByUsername(String username) {
        User userQuery = new User();
        userQuery.setUsername(username);
        User user = baseMapper.selectOne(userQuery);
        String userStr = JSONObject.toJSONString(user);
        UserVO userVO = JSONObject.parseObject(userStr, UserVO.class);
        return userVO;
    }
}
