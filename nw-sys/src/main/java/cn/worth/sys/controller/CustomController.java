package cn.worth.sys.controller;

import cn.worth.common.annotation.CurrentUser;
import cn.worth.common.constant.CommonConstant;
import cn.worth.common.utils.StringUtils;
import cn.worth.common.vo.LoginUser;
import cn.worth.sys.domain.Custom;
import cn.worth.sys.service.ICustomService;
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
@RequestMapping("/custom")
public class CustomController extends BaseController<ICustomService, Custom> {

    @Autowired
    private ICustomService tenantService;

    @PostMapping("page")
    public R page(Page<Custom> orgPage, Custom org, @CurrentUser LoginUser loginUser){

        EntityWrapper entityWrapper = getEntityWrapper(org);

        Page<Custom> page = selectPage(orgPage, entityWrapper);
        return R.success(page);
    }

    private EntityWrapper getEntityWrapper(Custom org) {
        EntityWrapper entityWrapper = new EntityWrapper();
        String briefName = org.getBriefName();
        Integer status = org.getStatus();
        String name = org.getName();
        String phone = org.getPhone();
        Integer type = org.getType();
        entityWrapper.eq("del_flag", CommonConstant.STATUS_NORMAL);
        if(StringUtils.isNotBlank(briefName)){
            entityWrapper.like("brief_name", briefName);
        }
        if(StringUtils.isNotBlank(name)){
            entityWrapper.like("name", name);
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
    public R<Custom> get(@PathVariable Long id) {
        return new R<>(tenantService.selectById(id));
    }


    /**
     * 添加
     *
     * @param tenant 实体
     * @return success/false
     */
    @PostMapping
    public R<Boolean> add(@RequestBody Custom tenant) {
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
        Custom tenant = new Custom();
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
    public R<Boolean> edit(@RequestBody Custom tenant) {
        tenant.setGmtUpdate(new Date());
        return new R<>(tenantService.updateById(tenant));
    }
}
