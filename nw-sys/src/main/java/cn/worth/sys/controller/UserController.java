package cn.worth.sys.controller;

import cn.worth.common.annotation.CurrentUser;
import cn.worth.common.constant.CommonConstant;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import cn.worth.common.utils.StringUtils;
import cn.worth.common.vo.LoginUser;
import cn.worth.sys.domain.User;
import cn.worth.sys.pojo.UserPojo;
import cn.worth.sys.service.IRoleService;
import cn.worth.sys.service.IUserService;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/19
 * @Description:
 * @Modified by:
 */
@RestController
@RequestMapping("user")
public class UserController extends BaseController<IUserService, User> {

    @Autowired
    private IUserService userService;

    @Autowired
    private IRoleService roleService;

    @PostMapping("page")
    public R page(Page<User> userPage, User user, @CurrentUser LoginUser loginUser) {

        EntityWrapper<User> entityWrapper = getUserEntityWrapper(user, loginUser);

        Page<User> page = selectPage(userPage, entityWrapper);
        return R.success(page);
    }

    private EntityWrapper<User> getUserEntityWrapper(User user, @CurrentUser LoginUser loginUser) {
        EntityWrapper<User> entityWrapper = new EntityWrapper<>();
        entityWrapper.orderBy("username");
        entityWrapper.eq("tenant_id", loginUser.getTenantId());
        entityWrapper.eq("del_flag", CommonConstant.STATUS_NORMAL);
        String realName = user.getRealName();
        String username = user.getUsername();
        String mobile = user.getMobile();
        String email = user.getEmail();
        if (StringUtils.isNotBlank(realName)){
            entityWrapper.eq("real_name", realName);
        }
        if (StringUtils.isNotBlank(mobile)){
            entityWrapper.eq("mobile", mobile);
        }
        if (StringUtils.isNotBlank(username)){
            entityWrapper.eq("username", username);
        }
        if (StringUtils.isNotBlank(email)){
            entityWrapper.eq("email", email);
        }
        return entityWrapper;
    }

    @GetMapping("{userId}")
    public R get(@PathVariable Long userId) {
        User data = userService.selectById(userId);
        if(null != data){
            UserPojo pojo = new UserPojo();
            BeanUtils.copyProperties(data, pojo);
            List<Long> roleIds = roleService.getRoleIdsByUserId(userId);
            pojo.setRoleIds(roleIds);
            return R.success(pojo);
        }

        return R.success(data);
    }

    @PostMapping
    public R add(@RequestBody UserPojo userPojo, @CurrentUser LoginUser userVO) {
        return userService.addOrUpdate(userPojo, userVO);
    }

    @PutMapping
    public R update(@RequestBody UserPojo userPojo, @CurrentUser LoginUser userVO) {
        return userService.addOrUpdate(userPojo, userVO);
    }

    @DeleteMapping("{userId}")
    public R del(@PathVariable Long userId) {
        return userService.del(userId);
    }

    @PostMapping("lockUser")
    public R lockUser(@PathVariable Long userId) {
        return userService.lockUser(userId);
    }

    @PostMapping("unLockUser")
    public R unLockUser(@PathVariable Long userId) {
        return userService.unLockUser(userId);
    }
}
