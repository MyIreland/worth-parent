package cn.worth.oauth2.service.impl;

import cn.worth.common.utils.CollectionUtils;
import cn.worth.common.utils.StringUtils;
import cn.worth.common.vo.MenuVO;
import cn.worth.oauth2.service.AuthPermissionService;
import cn.worth.oauth2.service.PermissionService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;
import org.springframework.util.AntPathMatcher;
import javax.servlet.http.HttpServletRequest;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Slf4j
@Service("permissionService")
public class PermissionServiceImpl implements PermissionService {
    @Autowired
    private AuthPermissionService permissionService;

    private AntPathMatcher antPathMatcher = new AntPathMatcher();

    @Override
    public boolean hasPermission(HttpServletRequest request, Authentication authentication) {
        //ele-admin options 跨域配置，现在处理是通过前端配置代理，不使用这种方式，存在风险
//        if (HttpMethod.OPTIONS.name().equalsIgnoreCase(request.getMethod())) {
//            return true;
//        }
        Object principal = authentication.getPrincipal();
        List<SimpleGrantedAuthority> grantedAuthorityList = (List<SimpleGrantedAuthority>) authentication.getAuthorities();
        boolean hasPermission = false;

        if (principal != null) {
            if (CollectionUtils.isEmpty(grantedAuthorityList)) {
                log.warn("角色列表为空：{}", authentication.getPrincipal());
                return hasPermission;
            }

//            Set<MenuVO> urls = new HashSet<>();
//            for (SimpleGrantedAuthority authority : grantedAuthorityList) {
//                String auth = authority.getAuthority();
//                if (!StringUtils.equals(auth, "ROLE_USER")) {
//                    Set<MenuVO> menuVOSet = menuService.findMenuByRole(auth);
//                    if (CollectionUtils.isNotEmpty(menuVOSet)) {
//                        urls.addAll(menuVOSet);
//                    }
//                }
//            }

//            for (MenuVO menu : urls) {
//                String menuUrl = menu.getUrl();
//                boolean notEmpty = StringUtils.isNotEmpty(menuUrl);
//                if (!notEmpty) {
//                    continue;
//                }
//                String requestUri = request.getRequestURI();
//                boolean match = antPathMatcher.match(menuUrl, requestUri);
//                String requestMethod = request.getMethod();
//                String method = menu.getMethod();
//                boolean equalsIgnoreCase = requestMethod.equalsIgnoreCase(method);
//                if (match && equalsIgnoreCase) {
//                    hasPermission = true;
//                    break;
//                }
//            }
        }
        return hasPermission;
    }
}