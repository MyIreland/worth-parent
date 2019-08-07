package cn.worth.sys.controller;

import cn.worth.common.annotation.CurrentUser;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import cn.worth.sys.domain.User;
import cn.worth.sys.pojo.UserPojo;
import cn.worth.sys.service.IUserService;
import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping
    public R listPage(Page<User> userPage, User user) {
        Page<User> page = selectPage(userPage, user);
        return R.success(page);
    }

    @GetMapping("{userId}")
    public R get(@PathVariable Long userId) {
        return R.success(userService.selectById(userId));
    }

    @PostMapping
    public R add(@RequestBody UserPojo userPojo) {
        return userService.addOrUpdate(userPojo);
    }

    @PutMapping
    public R update(@RequestBody UserPojo userPojo) {
        return userService.addOrUpdate(userPojo);
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
