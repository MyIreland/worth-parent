package cn.worth.common.utils;

import cn.worth.common.vo.UserVO;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.session.mgt.eis.SessionDAO;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

import java.security.Principal;
import java.util.Collection;
import java.util.List;

/**
 * @author MyIreland
 * 获取当前用户信息工具类
 */
public class ShiroUtils {
    @Autowired
    private static SessionDAO sessionDAO;

    public static Subject getSubject() {
        return SecurityUtils.getSubject();
    }

    public static UserVO getUser() {
        Object object = getSubject().getPrincipal();
        return (UserVO) object;
    }

    public static Long getUserId() {
        return getUser().getId();
    }

    public static void logout() {
        getSubject().logout();
    }

    public static Collection<Session> getPrinciples() {
        List<Principal> principals = null;
        Collection<Session> sessions = sessionDAO.getActiveSessions();

        return sessions;
    }
}
