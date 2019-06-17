package cn.worth.common.controller;

import cn.worth.common.utils.ShiroUtils;
import cn.worth.common.vo.UserVO;
import org.springframework.stereotype.Controller;

/**
 * @Author: MyIreland on.
 * @Description:
 * @Date: 2019/3/22
 */
public class BaseController {
    public UserVO getUser() {
        return ShiroUtils.getUser();
    }

    public Long getUserId() {
        return getUser().getId();
    }

    public String getUsername() {
        return getUser().getUsername();
    }
}
