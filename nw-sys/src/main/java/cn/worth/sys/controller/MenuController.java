package cn.worth.sys.controller;

import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import cn.worth.common.utils.TreeUtils;
import cn.worth.common.vo.MenuTree;
import cn.worth.common.vo.MenuVO;
import cn.worth.sys.domain.Menu;
import cn.worth.sys.service.IMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
     * 获取用户所有菜单权限树
     *
     * @return
     */
    @PostMapping("userPerms")
    public R userPerms() {
        List<Long> roleIds = gainUserRoleCodes();

        List<MenuVO> userMenus = menuService.findPermsByRoleIds(roleIds);

        List<MenuTree> data = buildTree(userMenus);
        return R.success(data);
    }

    /**
     * 获取用户所有菜单树
     *
     * @return
     */
    @PostMapping("userMenus")
    public R userMenus() {
        List<Long> roleIds = gainUserRoleCodes();

        List<MenuVO> userMenus = menuService.findMenusByRoleIds(roleIds);

        List<MenuTree> data = buildTree(userMenus);
        return R.success(data);
    }

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

    private List<MenuTree> buildTree(List<MenuVO> userMenus) {

        List<MenuTree> menuTrees = new ArrayList<>();

        userMenus.forEach(each -> menuTrees.add(new MenuTree(each)));

        List<MenuTree> buildTrees = TreeUtils.build(menuTrees, 0);
        return buildTrees;
    }

    private List<Long> gainUserRoleCodes() {

        List<Long> roleIds = new ArrayList<>();
        return roleIds;
    }
}
