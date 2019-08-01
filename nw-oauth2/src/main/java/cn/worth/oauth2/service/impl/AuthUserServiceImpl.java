package cn.worth.oauth2.service.impl;

import cn.worth.common.vo.UserVO;
import cn.worth.oauth2.domain.AuthUser;
import cn.worth.oauth2.mapper.AuthUserMapper;
import cn.worth.oauth2.service.AuthUserService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-08-01
 * @description
 **/
@Service
public class AuthUserServiceImpl extends ServiceImpl<AuthUserMapper, AuthUser> implements AuthUserService {

    @Override
    public UserVO findUserByUsername(String username) {
        AuthUser query = new AuthUser();
        query.setUsername(username);
        return baseMapper.loadUserByUsername(query);
    }
}
