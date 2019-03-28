package cn.worth.admin.service;

import cn.worth.admin.domain.User;
import cn.worth.common.vo.UserVO;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-09
 */
public interface IUserService extends IService<User> {

    UserVO loadUserByUsername(String username);
}
