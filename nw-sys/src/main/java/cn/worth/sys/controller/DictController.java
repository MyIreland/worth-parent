package cn.worth.sys.controller;

import cn.worth.sys.domain.Dict;
import cn.worth.sys.service.IDictService;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Date;

/**
 * <p>
 * 字典表 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
@RestController
@RequestMapping("/dict")
public class DictController extends BaseController {
    @Autowired
    private IDictService dictService;

    /**
     * 通过ID查询
     *
     * @param id ID
     * @return Dict
     */
    @GetMapping("/{id}")
    public R<Dict> get(@PathVariable Long id) {
        return new R<>(dictService.selectById(id));
    }


    /**
     * 添加
     *
     * @param dict 实体
     * @return success/false
     */
    @PostMapping
    public R<Boolean> add(@RequestBody Dict dict) {
        return new R<>(dictService.insert(dict));
    }

    /**
     * 删除
     *
     * @param id ID
     * @return success/false
     */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id) {
        Dict dict = new Dict();
        dict.setId(id);
        dict.setUpdateDate(new Date());
        return new R<>(dictService.updateById(dict));
    }

    /**
     * 编辑
     *
     * @param dict 实体
     * @return success/false
     */
    @PutMapping
    public R<Boolean> edit(@RequestBody Dict dict) {
        dict.setUpdateDate(new Date());
        return new R<>(dictService.updateById(dict));
    }
}
