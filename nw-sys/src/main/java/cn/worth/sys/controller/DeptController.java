package cn.worth.sys.controller;

import cn.worth.sys.domain.Dept;
import cn.worth.sys.service.IDeptService;
import cn.worth.common.constant.CommonConstant;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.Date;

/**
 * <p>
 * 部门管理 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
@RestController
@RequestMapping("/dept")
public class DeptController extends BaseController<IDeptService, Dept> {

    @Autowired
    private IDeptService deptService;

    /**
     * 通过ID查询
     *
     * @param id ID
     * @return Dept
     */
    @GetMapping("/{id}")
    public R<Dept> get(@PathVariable Long id) {
        return new R<>(deptService.selectById(id));
    }


    /**
     * 添加
     *
     * @param dept 实体
     * @return success/false
     */
    @PostMapping
    public R<Boolean> add(@RequestBody Dept dept) {
        return new R<>(deptService.insert(dept));
    }

    /**
     * 删除
     *
     * @param id ID
     * @return success/false
     */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id) {
        Dept dept = new Dept();
        dept.setDelFlag(CommonConstant.STATUS_DEL);
        dept.setId(id);
        dept.setUpdateTime(new Date());
        return new R<>(deptService.updateById(dept));
    }

    /**
     * 编辑
     *
     * @param dept 实体
     * @return success/false
     */
    @PutMapping
    public R<Boolean> edit(@RequestBody Dept dept) {
        dept.setUpdateTime(new Date());
        return new R<>(deptService.updateById(dept));
    }
}
