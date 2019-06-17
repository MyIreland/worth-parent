package cn.worth.sys.controller;

import cn.worth.common.pojo.R;
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
        return new R("");
    }

}
