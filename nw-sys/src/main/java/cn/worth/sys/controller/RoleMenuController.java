package cn.worth.sys.controller;

import cn.worth.common.pojo.R;
import cn.worth.sys.param.BindRoleMenuParam;
import cn.worth.sys.service.IRoleMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * 角色与菜单对应关系 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
@RestController
@RequestMapping("roleMenu")
public class RoleMenuController {
    @Autowired
    private IRoleMenuService roleMenuService;

    @GetMapping("{roleId}")
    public R getIdsByRoleId(@PathVariable Long roleId) {
        return roleMenuService.findMenuIdsByRoleId(roleId);
    }

    @PostMapping("bindRoleMenu")
    public R bindRoleMenu(@RequestBody BindRoleMenuParam param){
        return roleMenuService.bindRoleMenu(param);
    }
}
