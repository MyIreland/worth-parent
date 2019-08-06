package cn.worth.sys.service.impl;

import cn.worth.common.enums.RCodeEnum;
import cn.worth.common.enums.UserStateEnum;
import cn.worth.common.exception.BusinessException;
import cn.worth.common.pojo.R;
import cn.worth.common.vo.UserVO;
import cn.worth.sys.domain.User;
import cn.worth.sys.domain.UserRole;
import cn.worth.sys.enums.UserTypeEnum;
import cn.worth.sys.mapper.UserMapper;
import cn.worth.sys.pojo.UserPojo;
import cn.worth.sys.service.IUserRoleService;
import cn.worth.sys.service.IUserService;
import cn.worth.tools.service.StorageService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

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
    @Autowired
    private PasswordEncoder encoder;
    @Autowired
    private StorageService storageService;
    @Autowired
    private IUserRoleService userRoleService;

    @Override
    public R loadUserByUsername(String username) {
        User userQuery = new User();
        userQuery.setUsername(username);
        UserVO vo = baseMapper.loadUserByUsername(userQuery);

        return R.success(vo);
    }

    @Override
    @Transactional
    public R addOrUpdate(UserPojo userPojo) {

        User user = addOrUpdateUser(userPojo);

        updateUserRole(userPojo, user);

        return new R(RCodeEnum.SUCCESS);
    }

    @Override
    public R del(Long userId) {

        updateUserStatus(userId, UserStateEnum.DELETE.ordinal());

        return new R(RCodeEnum.SUCCESS);
    }

    private void updateUserStatus(Long userId, int status) {
        User userParams = new User();
        userParams.setId(userId);
        userParams.setStatus(status);
        baseMapper.updateById(userParams);
    }

    @Override
    public R lockUser(Long userId) {

        verifyParams(userId);

        updateUserStatus(userId, UserStateEnum.LOCKED.ordinal());

        return new R(RCodeEnum.SUCCESS);
    }

    private void verifyParams(Long userId) {
        if(null == userId){
            throw new BusinessException("userId is null");
        }
    }

    private void updateUserRole(UserPojo userPojo, User user) {
        Long userId = user.getId();
        List<Long> roles = userPojo.getRoles();
        List<UserRole> userRoles = new ArrayList<>();
        for (Long roleId : roles) {
            UserRole userRole = new UserRole();
            userRole.setRoleId(roleId);
            userRole.setUserId(userId);
            userRoles.add(userRole);
        }
        userRoleService.deleteByUserId(userId);
        userRoleService.insertBatch(userRoles);
    }

    private User addOrUpdateUser(UserPojo userPojo) {
        User user = new User();
        BeanUtils.copyProperties(userPojo, user);
        user.setStatus(UserStateEnum.ACTIVE.ordinal());
        user.setType(UserTypeEnum.COMMON_USER.ordinal());
        Long userId = user.getId();
        if (null == userId) {
            baseMapper.insert(user);
        } else {
            baseMapper.updateById(user);
        }
        return user;
    }
}
