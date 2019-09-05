package cn.worth.sys.controller;

import java.util.Date;
import java.util.List;

import cn.worth.common.annotation.CurrentUser;
import cn.worth.common.constant.CommonConstant;
import cn.worth.common.exception.BusinessException;
import cn.worth.common.pojo.R;
import cn.worth.common.utils.StringUtils;
import cn.worth.common.vo.LoginUser;
import cn.worth.sys.enums.EntityTypeEnum;
import cn.worth.sys.service.IRoleService;
import cn.worth.sys.utils.VerifyUtils;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
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


    @PostMapping("page")
    public R page(Page<Role> page, Role role, @CurrentUser LoginUser user){
        EntityWrapper<Role> wrapper = getRoleWrapper(role, user);
        Page<Role> rolePage = selectPage(page, wrapper);
        return R.success(rolePage);
    }

    @PostMapping("list")
    public R list(Role role, @CurrentUser LoginUser user){
        EntityWrapper<Role> roleWrapper = getRoleWrapper(role, user);

        List<Role> roles = roleService.selectList(roleWrapper);
        return R.success(roles);
    }

    private EntityWrapper<Role> getRoleWrapper(Role role, LoginUser user) {
        EntityWrapper<Role> wrapper = new EntityWrapper<>();
        wrapper.orderBy("id");
        wrapper.eq("del_flag", CommonConstant.STATUS_NORMAL);
        wrapper.eq("org_id", user.getOrgId());
        String roleCode = role.getRoleCode();
        String roleName = role.getRoleName();
        Integer roleType = role.getRoleType();
        if(StringUtils.isNotBlank(roleCode)){
            wrapper.eq("role_code", roleCode);
        }
        if(StringUtils.isNotBlank(roleName)){
            wrapper.eq("role_name", roleName);
        }
        if(null != roleType){
            wrapper.eq("role_type", roleType);
        }
        return wrapper;
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
    @PostMapping()
    public R<Boolean> add(@RequestBody Role role, @CurrentUser LoginUser loginUser) {
        Date gmtCreate = new Date();
        role.setGmtCreate(gmtCreate);
        role.setOrgId(loginUser.getOrgId());
        role.setGmtUpdate(gmtCreate);
        role.setDelFlag(CommonConstant.STATUS_NORMAL);
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

        verifyParam(id);

        Role roleQuery = new Role();
        roleQuery.setId(id);
        roleQuery.setGmtUpdate(new Date());
        roleQuery.setDelFlag(CommonConstant.STATUS_DEL);
        return new R<>(roleService.updateById(roleQuery));
    }

    private void verifyParam(@PathVariable Long id) {
        Role role = roleService.selectById(id);
        if(null == role){
            throw new BusinessException("error id");
        }
        VerifyUtils.verifyAdmin(role.getRoleType());
    }

    /**
     * 编辑
     *
     * @param role 实体
     * @return success/false
     */
    @PutMapping
    public R<Boolean> update(@RequestBody Role role) {
        role.setGmtUpdate(new Date());
        return new R<>(roleService.updateById(role));
    }
}
