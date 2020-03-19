package cn.worth.sys.controller;

import cn.worth.common.v2.constant.CommonConstant;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import cn.worth.common.utils.TreeUtils;
import cn.worth.common.v2.domain.MenuTree;
import cn.worth.sys.domain.Menu;
import cn.worth.sys.service.IMenuService;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * <p>
 * 菜单权限表 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-08-07
 */
@RestController
@RequestMapping("/menu")
public class MenuController extends BaseController<IMenuService, Menu> {

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
     * 分页查询信息
     *
     * @return 分页对象
     */
    @RequestMapping("/tree")
    public R tree() {
        EntityWrapper<Menu> wrapper = new EntityWrapper<>();
        wrapper.eq("del_flag", CommonConstant.STATUS_NORMAL);
        List<Menu> menus = menuService.selectList(wrapper);

        List<MenuTree> menuTrees = new ArrayList<>();
        for (Menu menu : menus) {
            MenuTree menuTree = new MenuTree();
            menuTree.setId(menu.getId());
            menuTree.setParentId(menu.getParentId());
            menuTree.setLabel(menu.getName());
            menuTree.setSort(menu.getSort());
            menuTrees.add(menuTree);
        }
        List<MenuTree> tree = TreeUtils.buildTree(menuTrees, -1L);
        return R.success(tree);
    }

    /**
     * 添加
     *
     * @param menu 实体
     * @return success/false
     */
    @PostMapping
    public R<Boolean> add(@RequestBody Menu menu) {
        menu.setGmtCreate(new Date());
        menu.setGmtUpdate(new Date());
        Long parentId = menu.getParentId();
        if(null == parentId){
            menu.setParentId(-1L);
        }
        menu.setDelFlag(CommonConstant.STATUS_NORMAL);
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
        menu.setDelFlag(CommonConstant.STATUS_DEL);
        menu.setGmtUpdate(new Date());
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
        menu.setGmtUpdate(new Date());
        return new R<>(menuService.updateById(menu));
    }


}
