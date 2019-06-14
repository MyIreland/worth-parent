package cn.worth.sys.controller;

import cn.worth.sys.domain.UserRole;
import cn.worth.sys.service.IUserRoleService;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 * 用户与角色对应关系 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
@RestController
@RequestMapping("/userRole")
public class UserRoleController extends BaseController {
    @Autowired
    private IUserRoleService userRoleService;

    /**
     * 通过ID查询
     *
     * @param id ID
     * @return UserRole
     */
    @GetMapping("/{id}")
    public R<UserRole> get(@PathVariable Long id) {
        return new R<>(userRoleService.selectById(id));
    }


    /**
     * 添加
     *
     * @param userRole 实体
     * @return success/false
     */
    @PostMapping
    public R<Boolean> add(@RequestBody UserRole userRole) {
        return new R<>(userRoleService.insert(userRole));
    }

    /**
     * 删除
     *
     * @param id ID
     * @return success/false
     */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id) {
        return new R<>(userRoleService.deleteById(id));
    }

    /**
     * 编辑
     *
     * @param userRole 实体
     * @return success/false
     */
    @PutMapping
    public R<Boolean> edit(@RequestBody UserRole userRole) {
        return new R<>(userRoleService.updateById(userRole));
    }
}
