package cn.worth.oauth2.service;

import cn.worth.common.vo.UserVO;
import cn.worth.oauth2.domain.AuthUser;
import com.baomidou.mybatisplus.service.IService;

public interface AuthUserService extends IService<AuthUser> {
    /**
     * 通过用户名查询用户、角色信息
     *
     * @param username 用户名
     * @return UserVo
     */
    UserVO findUserByUsername(String username);
}