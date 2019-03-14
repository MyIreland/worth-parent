package cn.worth.gen.service;

import cn.worth.gen.domain.User;
import cn.worth.common.pojo.UserVO;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-09
 */
public interface UserService extends IService<User> {

    UserVO loadUserByUsername(String username);
}
