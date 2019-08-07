package cn.worth.sys.service;

import cn.worth.common.pojo.R;
import cn.worth.sys.domain.User;
import cn.worth.common.vo.UserVO;
import cn.worth.sys.pojo.UserPojo;
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

    R loadUserByUsername(String username);

    R addOrUpdate(UserPojo userPojo);

    R del(Long userId);

    R lockUser(Long userId);

    R unLockUser(Long userId);
}
