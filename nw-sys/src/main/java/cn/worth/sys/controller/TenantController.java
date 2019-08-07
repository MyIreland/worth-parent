package cn.worth.sys.controller;

import cn.worth.common.constant.CommonConstant;
import cn.worth.sys.domain.Tenant;
import cn.worth.sys.service.ITenantService;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
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
public class TenantController extends BaseController<ITenantService, Tenant> {

    @Autowired
    private ITenantService tenantService;

    /**
     * 通过ID查询
     *
     * @param id ID
     * @return Org
     */
    @GetMapping("/{id}")
    public R<Tenant> get(@PathVariable Long id) {
        return new R<>(tenantService.selectById(id));
    }


    /**
     * 添加
     *
     * @param org 实体
     * @return success/false
     */
    @PostMapping
    public R<Boolean> add(@RequestBody Tenant org) {
        return new R<>(tenantService.insert(org));
    }

    /**
     * 删除
     *
     * @param id ID
     * @return success/false
     */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id) {
        Tenant tenant = new Tenant();
        tenant.setId(id);
        tenant.setGmtUpdate(new Date());
        tenant.setDelFlag(CommonConstant.STATUS_DEL);
        return new R<>(tenantService.updateById(tenant));
    }

    /**
     * 编辑
     *
     * @param org 实体
     * @return success/false
     */
    @PutMapping
    public R<Boolean> edit(@RequestBody Tenant org) {
        org.setGmtUpdate(new Date());
        return new R<>(tenantService.updateById(org));
    }
}
