package cn.worth.auth.service.impl;

import cn.worth.auth.pojo.CustomUserDetails;
import cn.worth.common.vo.UserVO;
import cn.worth.sys.service.IUserService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * 自定义用户认证Service
 *
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/11
 * @Description:
 * @Modified by:
 */
@Service("userDetailsService")
public class UserDetailServiceImpl implements UserDetailsService {

    @Autowired
    private IUserService userService;

    private static final Logger log = LoggerFactory.getLogger(UserDetailServiceImpl.class);

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserVO user = userService.loadUserByUsername(username);
        CustomUserDetails customUserDetails = new CustomUserDetails(user);
        return customUserDetails;//返回UserDetails的实现user不为空，则验证通过
    }
}
