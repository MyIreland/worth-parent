package cn.worth.admin.controller;

import cn.worth.admin.domain.Role;
import cn.worth.admin.service.IRoleService;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

/**
 * <p>
 * 角色 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
@RestController
@RequestMapping("/role")
public class RoleController extends BaseController {
    @Autowired
    private IRoleService roleService;

    /**
     * 通过ID查询
     *
     * @param id ID
     * @return Role
     */
    @GetMapping("/{id}")
    public R<Role> get(@PathVariable Long id) {
        return new R<>(roleService.selectById(id));
    }

    /**
     * 添加
     *
     * @param role 实体
     * @return success/false
     */
    @PostMapping
    public R<Boolean> add(@RequestBody Role role) {
        return new R<>(roleService.insert(role));
    }

    /**
     * 删除
     *
     * @param id ID
     * @return success/false
     */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id) {
        Role role = new Role();
        role.setId(id);
        role.setUpdateTime(new Date());
        return new R<>(roleService.updateById(role));
    }

    /**
     * 编辑
     *
     * @param role 实体
     * @return success/false
     */
    @PutMapping
    public R<Boolean> edit(@RequestBody Role role) {
        role.setUpdateTime(new Date());
        return new R<>(roleService.updateById(role));
    }
}
