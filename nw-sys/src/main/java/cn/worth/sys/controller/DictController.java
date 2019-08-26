package cn.worth.sys.controller;

import cn.worth.common.constant.CommonConstant;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import cn.worth.common.utils.CollectionUtils;
import cn.worth.common.utils.StringUtils;
import cn.worth.sys.domain.Dict;
import cn.worth.sys.service.IDictService;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * <p>
 * 字典表 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-08-07
 */
@RestController
@RequestMapping("dict")
public class DictController extends BaseController<IDictService, Dict> {

    @Autowired
    private IDictService dictService;

    /**
     * 通过ID查询
     *
     * @param id ID
     * @return Dict
     */
    @GetMapping("{id}")
    public R<Dict> get(@PathVariable Long id) {
        return new R<>(dictService.selectById(id));
    }


    /**
     * 分页查询信息
     *
     * @return 分页对象
     */
    @PostMapping("/page")
    public R page(Page<Dict> entityPage, Dict query) {

        EntityWrapper conditionWrapper = getDictEntityWrapper(query);

        Page<Dict> page = selectPage(entityPage, conditionWrapper);
        return R.success(page);
    }

    private EntityWrapper getDictEntityWrapper(Dict query) {
        EntityWrapper conditionWrapper = new EntityWrapper<>();
        List<String> ascColumns = new ArrayList<>();
        ascColumns.add("type");
        ascColumns.add("sort");
        ascColumns.add("id");
        conditionWrapper.orderDesc(ascColumns);
        String description = query.getDescription();
        String type = query.getType();
        if(StringUtils.isNotBlank(description)){
            conditionWrapper.eq("type", type);
            conditionWrapper.eq("description", description);
        }
        conditionWrapper.eq("del_flag", CommonConstant.STATUS_NORMAL);
        return conditionWrapper;
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
        dict.setDelFlag(CommonConstant.STATUS_DEL);
        dict.setGmtUpdate(new Date());
        return new R<>(dictService.updateById(dict));
    }

    /**
     * 删除
     *
     * @param ids
     * @return success/false
     */
    @PostMapping("batchDel")
    public R batchDel(List<Long> ids) {
        if(CollectionUtils.isNotEmpty(ids)){
            dictService.deleteBatchIds(ids);
        }

        return R.success(true);
    }

    /**
     * 编辑
     *
     * @param dict 实体
     * @return success/false
     */
    @PutMapping
    public R<Boolean> edit(@RequestBody Dict dict) {
        dict.setGmtUpdate(new Date());
        return new R<>(dictService.updateById(dict));
    }
}
