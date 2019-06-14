package cn.worth.sys.controller;

import cn.worth.sys.domain.Org;
import cn.worth.sys.service.IOrgService;
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
public class OrgController extends BaseController {
    @Autowired
    private IOrgService orgService;

    /**
     * 通过ID查询
     *
     * @param id ID
     * @return Org
     */
    @GetMapping("/{id}")
    public R<Org> get(@PathVariable Long id) {
        return new R<>(orgService.selectById(id));
    }


    /**
     * 添加
     *
     * @param org 实体
     * @return success/false
     */
    @PostMapping
    public R<Boolean> add(@RequestBody Org org) {
        return new R<>(orgService.insert(org));
    }

    /**
     * 删除
     *
     * @param id ID
     * @return success/false
     */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id) {
        Org org = new Org();
        org.setId(id);
        org.setUpdateTime(new Date());
        return new R<>(orgService.updateById(org));
    }

    /**
     * 编辑
     *
     * @param org 实体
     * @return success/false
     */
    @PutMapping
    public R<Boolean> edit(@RequestBody Org org) {
        org.setUpdateTime(new Date());
        return new R<>(orgService.updateById(org));
    }
}
