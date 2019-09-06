package cn.worth.sys.controller;

import cn.worth.common.annotation.CurrentUser;
import cn.worth.common.constant.CommonConstant;
import cn.worth.common.utils.StringUtils;
import cn.worth.common.vo.LoginUser;
import cn.worth.sys.domain.Organization;
import cn.worth.sys.service.IOrganizationService;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
@RestController
@RequestMapping("/org")
public class OrganizationController extends BaseController<IOrganizationService, Organization> {

    @Autowired
    private IOrganizationService tenantService;

    @PostMapping("page")
    public R page(Page<Organization> orgPage, Organization org, @CurrentUser LoginUser loginUser){

        EntityWrapper entityWrapper = getEntityWrapper(org);

        Page<Organization> page = selectPage(orgPage, entityWrapper);
        return R.success(page);
    }

    private EntityWrapper getEntityWrapper(Organization org) {
        EntityWrapper entityWrapper = new EntityWrapper();
        String briefName = org.getBriefName();
        Integer status = org.getStatus();
        String name = org.getName();
        String phone = org.getPhone();
        Integer type = org.getType();
        if(StringUtils.isNotBlank(briefName)){
            entityWrapper.eq("brief_name", briefName);
        }
        if(StringUtils.isNotBlank(name)){
            entityWrapper.eq("name", name);
        }
        if(null != status){
            entityWrapper.eq("status", status);
        }
        if(null != type){
            entityWrapper.eq("type", type);
        }
        if(StringUtils.isNotBlank(phone)){
            entityWrapper.eq("phone", phone);
        }
        return entityWrapper;
    }

    /**
     * 通过ID查询
     *
     * @param id ID
     * @return tenant
     */
    @GetMapping("/{id}")
    public R<Organization> get(@PathVariable Long id) {
        return new R<>(tenantService.selectById(id));
    }


    /**
     * 添加
     *
     * @param tenant 实体
     * @return success/false
     */
    @PostMapping
    public R<Boolean> add(@RequestBody Organization tenant) {
        return new R<>(tenantService.insert(tenant));
    }

    /**
     * 删除
     *
     * @param id ID
     * @return success/false
     */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id) {
        Organization tenant = new Organization();
        tenant.setId(id);
        tenant.setGmtUpdate(new Date());
        tenant.setDelFlag(CommonConstant.STATUS_DEL);
        return new R<>(tenantService.updateById(tenant));
    }

    /**
     * 编辑
     *
     * @param tenant 实体
     * @return success/false
     */
    @PutMapping
    public R<Boolean> edit(@RequestBody Organization tenant) {
        tenant.setGmtUpdate(new Date());
        return new R<>(tenantService.updateById(tenant));
    }
}
