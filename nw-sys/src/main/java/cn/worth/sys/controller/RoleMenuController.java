package cn.worth.sys.controller;

import cn.worth.sys.domain.RoleMenu;
import cn.worth.sys.service.IRoleMenuService;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
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
@RequestMapping("/roleMenu")
public class RoleMenuController extends BaseController {
    @Autowired
    private IRoleMenuService roleMenuService;

    /**
     * 通过ID查询
     *
     * @param id ID
     * @return RoleMenu
     */
    @GetMapping("/{id}")
    public R<RoleMenu> get(@PathVariable Long id) {
        return new R<>(roleMenuService.selectById(id));
    }

    /**
     * 添加
     *
     * @param roleMenu 实体
     * @return success/false
     */
    @PostMapping
    public R<Boolean> add(@RequestBody RoleMenu roleMenu) {
        return new R<>(roleMenuService.insert(roleMenu));
    }

    /**
     * 删除
     *
     * @param id ID
     * @return success/false
     */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id) {
        return new R<>(roleMenuService.deleteById(id));
    }

    /**
     * 编辑
     *
     * @param roleMenu 实体
     * @return success/false
     */
    @PutMapping
    public R<Boolean> edit(@RequestBody RoleMenu roleMenu) {
        return new R<>(roleMenuService.updateById(roleMenu));
    }
}
