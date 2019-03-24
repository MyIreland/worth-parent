package cn.worth.admin.controller;

import cn.worth.admin.domain.Menu;
import cn.worth.admin.service.IMenuService;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

/**
 * <p>
 * 菜单管理 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
@RestController
@RequestMapping("/menu")
public class MenuController extends BaseController {
    @Autowired
    private IMenuService menuService;

    /**
     * 通过ID查询
     *
     * @param id ID
     * @return Menu
     */
    @GetMapping("/{id}")
    public R<Menu> get(@PathVariable Long id) {
        return new R<>(menuService.selectById(id));
    }


    /**
     * 添加
     *
     * @param menu 实体
     * @return success/false
     */
    @PostMapping
    public R<Boolean> add(@RequestBody Menu menu) {
        return new R<>(menuService.insert(menu));
    }

    /**
     * 删除
     *
     * @param id ID
     * @return success/false
     */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id) {
        Menu menu = new Menu();
        menu.setId(id);
        menu.setUpdateTime(new Date());
        return new R<>(menuService.updateById(menu));
    }

    /**
     * 编辑
     *
     * @param menu 实体
     * @return success/false
     */
    @PutMapping
    public R<Boolean> edit(@RequestBody Menu menu) {
        menu.setUpdateTime(new Date());
        return new R<>(menuService.updateById(menu));
    }
}
