package cn.worth.sys.controller;
import java.util.Map;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import cn.worth.common.constant.CommonConstant;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import cn.worth.common.pojo.R;
import cn.worth.sys.domain.BizMemberLevel;
import cn.worth.sys.service.IBizMemberLevelService;
import cn.worth.common.controller.BaseController;

/**
 * <p>
 * 会员等级表 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-10-11
 */
@RestController
@RequestMapping("/bizMemberLevel")
public class BizMemberLevelController extends BaseController<IBizMemberLevelService, BizMemberLevel> {

    /**
    * 通过ID查询
    *
    * @param id ID
    * @return BizMemberLevel
    */
    @GetMapping("/{id}")
    public R<BizMemberLevel> get(@PathVariable Long id){
        return new R<>(baseService.selectById(id));
    }


    /**
    * 分页查询信息
    *
    * @return 分页对象
    */
    @PostMapping("/page")
    public R page(Page<BizMemberLevel> entityPage, BizMemberLevel entity){
        Page<BizMemberLevel> page=selectPage(entityPage, entity);
        return R.success(page);
    }

    /**
    * 添加
    * @param  bizMemberLevel 实体
    * @return success/false
    */
    @PostMapping
    public R<Boolean> add(@RequestBody BizMemberLevel bizMemberLevel){
        return new R<>(baseService.insert(bizMemberLevel));
    }

    /**
    * 删除
    * @param id ID
    * @return success/false
    */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id){
        BizMemberLevel bizMemberLevel =new BizMemberLevel();
        bizMemberLevel.setId(id);
        bizMemberLevel.setDelFlag(CommonConstant.STATUS_DEL);
        bizMemberLevel.setGmtUpdate(new Date());
        return new R<>(baseService.updateById(bizMemberLevel));
    }

    /**
    * 编辑
    * @param  bizMemberLevel 实体
    * @return success/false
    */
    @PutMapping
    public R<Boolean> edit(@RequestBody BizMemberLevel bizMemberLevel){
        bizMemberLevel.setGmtUpdate(new Date());
        return new R<>(baseService.updateById(bizMemberLevel));
    }
}
