package cn.worth.sys.controller;
import java.util.Map;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import cn.worth.common.constant.CommonConstant;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import cn.worth.common.pojo.R;
import cn.worth.sys.domain.ApprovalTaskProcess;
import cn.worth.sys.service.IApprovalTaskProcessService;
import cn.worth.common.controller.BaseController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-17
 */
@RestController
@RequestMapping("/approvalTaskProcess")
public class ApprovalTaskProcessController extends BaseController<IApprovalTaskProcessService, ApprovalTaskProcess> {

    @Autowired
    private IApprovalTaskProcessService approvalTaskProcessService;

    /**
    * 通过ID查询
    *
    * @param id ID
    * @return ApprovalTaskProcess
    */
    @GetMapping("/{id}")
    public R<ApprovalTaskProcess> get(@PathVariable Long id){
        return new R<>(approvalTaskProcessService.selectById(id));
    }


    /**
    * 分页查询信息
    *
    * @return 分页对象
    */
    @RequestMapping("/page")
    public R page(Page<ApprovalTaskProcess> entityPage, ApprovalTaskProcess entity){
        Page<ApprovalTaskProcess> page=selectPage(entityPage, entity);
        return R.success(page);
    }

    /**
    * 添加
    * @param  approvalTaskProcess 实体
    * @return success/false
    */
    @PostMapping
    public R<Boolean> add(@RequestBody ApprovalTaskProcess approvalTaskProcess){
        return new R<>(approvalTaskProcessService.insert(approvalTaskProcess));
    }

    /**
    * 删除
    * @param id ID
    * @return success/false
    */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id){
        ApprovalTaskProcess approvalTaskProcess =new ApprovalTaskProcess();
        approvalTaskProcess.setId(id);
        approvalTaskProcess.setDelFlag(CommonConstant.STATUS_DEL);
        approvalTaskProcess.setGmtUpdate(new Date());
        return new R<>(approvalTaskProcessService.updateById(approvalTaskProcess));
    }

    /**
    * 编辑
    * @param  approvalTaskProcess 实体
    * @return success/false
    */
    @PutMapping
    public R<Boolean> edit(@RequestBody ApprovalTaskProcess approvalTaskProcess){
        approvalTaskProcess.setGmtUpdate(new Date());
        return new R<>(approvalTaskProcessService.updateById(approvalTaskProcess));
    }
}
