package cn.worth.sys.controller;

import java.util.Date;

import cn.worth.common.constant.CommonConstant;
import cn.worth.common.pojo.R;
import cn.worth.sys.service.IRoleService;
import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import cn.worth.sys.domain.Role;
import cn.worth.common.controller.BaseController;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-08-07
 */
@RestController
@RequestMapping("/role")
public class RoleController extends BaseController<IRoleService, Role> {

    @Autowired
    private IRoleService roleService;


    @PostMapping("pageList")
    public R pageList(Page<Role> page, Role role){
        Page<Role> rolePage = selectPage(page, role);
        return R.success(rolePage);
    }

    /**
     * 通过ID查询
     *
     * @param id ID
     * @return Role
     */
    @GetMapping("{id}")
    public R<Role> get(@PathVariable Long id) {
        return new R<>(roleService.selectById(id));
    }

    /**
     * 添加
     *
     * @param role 实体
     * @return success/false
     */
    @PostMapping("add")
    public R<Boolean> add(@RequestBody Role role) {
        role.setGmtCreate(new Date());
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
        role.setGmtUpdate(new Date());
        role.setDelFlag(CommonConstant.STATUS_DEL);
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
        role.setGmtUpdate(new Date());
        return new R<>(roleService.updateById(role));
    }
}
