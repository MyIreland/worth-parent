package cn.worth.auth.controller;

import cn.worth.common.exception.BusinessException;
import cn.worth.common.pojo.R;
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
public class LoginController {

    @Autowired
    private IUserService userService;

    @PostMapping("login")
    public R login(String username, String password){
        validateParam(username, password);
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);

        Subject subject = SecurityUtils.getSubject();

        subject.login(token);

        return R.success(subject.getPrincipal());

    }

    private void validateParam(String username, String password) {
        if(null == username || null == password){
            throw new BusinessException("参数不能有空");
        }
    }

}
