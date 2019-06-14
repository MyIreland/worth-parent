package cn.worth.auth.controller;

import cn.worth.common.pojo.R;
import cn.worth.sys.service.IUserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RestController
public class WebController {

    @Autowired
    private IUserService userService;

    @PostMapping("/login")
    public R login(String username, String password) {
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        Subject subject = SecurityUtils.getSubject();
        subject.login(token);
        return R.success("success");

    }

    @GetMapping("/article")
    public R article() {
        Subject subject = SecurityUtils.getSubject();
        if (subject.isAuthenticated()) {
            return R.success("You are already logged in", null);
        } else {
            return R.success("You are guest", null);
        }
    }

    @GetMapping("/require_auth")
    @RequiresAuthentication
    public R requireAuth() {
        return R.success("You are authenticated", null);
    }

    @GetMapping("/require_role")
    @RequiresRoles("admin")
    public R requireRole() {
        return R.success("You are visiting require_role", null);
    }

    @GetMapping("/require_permission")
    @RequiresPermissions(logical = Logical.AND, value = {"view", "edit"})
    public R requirePermission() {
        return R.success("You are visiting permission require edit,view", null);
    }

    @RequestMapping(path = "/401")
    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    public R unauthorized() {
        return R.success("Unauthorized", null);
    }
}