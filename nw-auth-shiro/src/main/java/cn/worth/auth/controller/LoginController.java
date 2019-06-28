package cn.worth.auth.controller;

import cn.worth.common.controller.BaseController;
import cn.worth.common.enums.UserStateEnum;
import cn.worth.common.exception.BusinessException;
import cn.worth.common.pojo.R;
import cn.worth.common.utils.ShiroUtils;
import cn.worth.common.vo.UserVO;
import cn.worth.sys.domain.User;
import cn.worth.sys.service.IUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: MyIreland
 * @Date: 2019/6/17 13:52
 * @Version 1.0
 */
@RestController
@RequestMapping("auth")
public class LoginController extends BaseController {

    @Autowired
    private IUserService userService;

    @PostMapping("login")
    public R login(String username, String password) {
        UserVO user = getUser();
        if (null != user) {
            return R.success(user);
        }
        validateParam(username, password);
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);

        Subject subject = SecurityUtils.getSubject();

        subject.login(token);

        return R.success(subject.getPrincipal());

    }

    /**
     * 根据用户名 解锁用户
     * @param username
     * @return
     */
    @PostMapping("unlockAccount")
    public void unlockAccount(String username){
        UserVO userVO = userService.loadUserByUsername(username);
        if (userVO != null){
            User user = new User();
            //修改数据库的状态字段为锁定
            user.setId(userVO.getId());
            user.setState(UserStateEnum.ACTIVE.ordinal());
            userService.updateById(user);
        }
    }

    @PostMapping("currentUser")
    public R currentUser(){
        UserVO user = getUser();
        System.out.println(user);
        return R.success(user);
    }

    private void validateParam(String username, String password) {
        if (null == username || null == password) {
            throw new BusinessException("参数不能有空");
        }
    }

}
