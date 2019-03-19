package cn.worth.admin.controller;

import cn.worth.common.pojo.R;
import cn.worth.common.pojo.UserVO;
import cn.worth.common.utils.UserUtils;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/19
 * @Description:
 * @Modified by:
 */
@RestController
@RequestMapping("user")
public class UserController {

    @PostMapping("info")
    public R current(Authentication authentication){
        UserVO loginUser = (UserVO) authentication.getPrincipal();
        return new R(loginUser);
    }

}
