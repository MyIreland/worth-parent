package cn.worth.admin.controller;

import cn.worth.common.pojo.R;
import cn.worth.common.vo.UserVO;
import cn.worth.common.utils.UserUtils;
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
    public R current() {
        UserVO loginUser = UserUtils.getLoginUser();
        return new R(loginUser);
    }

}
