package cn.worth.common.controller;

import cn.worth.common.vo.RoleVo;
import cn.worth.common.vo.UserVO;
import cn.worth.common.utils.UserUtils;
import org.springframework.stereotype.Controller;
import java.util.Set;

/**
 * @Author: MyIreland on.
 * @Description:
 * @Date: 2019/3/22
 */
@Controller
public class BaseController {

    protected UserVO getUser() {
        return UserUtils.getLoginUser();
    }

    protected Long getUserId() {
        return getUser().getId();
    }

    protected Set<RoleVo> getRoleVos(){
        return getUser().getRoles();
    }

    protected String getUsername() {
        return getUser().getUsername();
    }
}
