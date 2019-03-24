package cn.worth.common.controller;

import cn.worth.common.pojo.UserVO;
import cn.worth.common.utils.UserUtils;
import org.springframework.stereotype.Controller;

/**
 * @Author: MyIreland on.
 * @Description:
 * @Date: 2019/3/22
 */
@Controller
public class BaseController {
    UserVO getUser() {
        return UserUtils.getLoginUser();
    }

    Long getUserId() {
        return getUser().getId();
    }

    String getUsername() {
        return getUser().getUsername();
    }
}
