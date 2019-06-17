package cn.worth.common.utils;

import cn.worth.common.vo.UserVO;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

public class ShiroUtils {

    public static Subject getSubjct() {
        return SecurityUtils.getSubject();
    }
    public static UserVO getUser() {
        Object object = getSubjct().getPrincipal();
        return (UserVO)object;
    }
    public static Long getUserId() {
        return getUser().getId();
    }
    public static void logout() {
        getSubjct().logout();
    }
}
