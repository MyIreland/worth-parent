package cn.worth.sys.service.impl;

import cn.worth.common.constant.CommonConstant;
import cn.worth.common.enums.RCodeEnum;
import cn.worth.common.enums.UserStateEnum;
import cn.worth.common.exception.BusinessException;
import cn.worth.common.pojo.R;
import cn.worth.common.vo.LoginUser;
import cn.worth.sys.domain.User;
import cn.worth.sys.enums.EntityTypeEnum;
import cn.worth.sys.mapper.UserMapper;
import cn.worth.sys.param.BindUserRoleParam;
import cn.worth.sys.pojo.UserPojo;
import cn.worth.sys.service.IUserRoleService;
import cn.worth.sys.service.IUserService;
import cn.worth.tools.storage.service.StorageService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
    @Transactional
    public R addOrUpdate(UserPojo userPojo, LoginUser userVO) {

        User user = addOrUpdateUser(userPojo);

        updateUserRole(userPojo, user);

        return new R(RCodeEnum.SUCCESS);
    }

    @Override
    @Transactional
    public R del(Long userId) {
        User userParams = new User();
        userParams.setId(userId);
        userParams.setDelFlag(CommonConstant.STATUS_DEL);
        baseMapper.updateById(userParams);

        return new R(RCodeEnum.SUCCESS);
    }

    @Override
    @Transactional
    public R lockUser(Long userId) {

        verifyParams(userId);

        updateUserStatus(userId, UserStateEnum.LOCKED.ordinal());

        return new R(RCodeEnum.SUCCESS);
    }

    @Override
    @Transactional
    public R unLockUser(Long userId) {
        verifyParams(userId);

        updateUserStatus(userId, UserStateEnum.ACTIVE.ordinal());

        return new R(RCodeEnum.SUCCESS);
    }

    private void verifyParams(Long userId) {
        if(null == userId){
            throw new BusinessException("userId is null");
        }
    }

    private void updateUserStatus(Long userId, int status) {
        User userParams = new User();
        userParams.setId(userId);
        userParams.setStatus(status);
        baseMapper.updateById(userParams);
    }

    private void updateUserRole(UserPojo userPojo, User user) {
        Long userId = user.getId();
        BindUserRoleParam param = new BindUserRoleParam();
        param.setUserId(userId);
        param.setRoleIds(userPojo.getRoleIds());
        userRoleService.bindUserRole(param);
    }

    private User addOrUpdateUser(UserPojo userPojo) {
        User user = new User();
        BeanUtils.copyProperties(userPojo, user);
        user.setStatus(UserStateEnum.ACTIVE.ordinal());
        user.setType(EntityTypeEnum.COMMON.ordinal());
        Long userId = user.getId();
        if (null == userId) {
            baseMapper.insert(user);
        } else {
            baseMapper.updateById(user);
        }
        return user;
    }
}
