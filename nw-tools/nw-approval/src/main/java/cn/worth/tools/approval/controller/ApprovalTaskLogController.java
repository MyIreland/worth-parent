package cn.worth.sys.controller;
import java.util.Map;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import cn.worth.common.constant.CommonConstant;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import cn.worth.common.pojo.R;
import cn.worth.sys.domain.ApprovalTaskLog;
import cn.worth.sys.service.IApprovalTaskLogService;
import cn.worth.common.controller.BaseController;

/**
 * <p>
 * 审批任务操作记录表 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-17
 */
@RestController
@RequestMapping("/approvalTaskLog")
public class ApprovalTaskLogController extends BaseController<IApprovalTaskLogService, ApprovalTaskLog> {

    @Autowired
    private IApprovalTaskLogService approvalTaskLogService;

    /**
    * 通过ID查询
    *
    * @param id ID
    * @return ApprovalTaskLog
    */
    @GetMapping("/{id}")
    public R<ApprovalTaskLog> get(@PathVariable Long id){
        return new R<>(approvalTaskLogService.selectById(id));
    }


    /**
    * 分页查询信息
    *
    * @return 分页对象
    */
    @RequestMapping("/page")
    public R page(Page<ApprovalTaskLog> entityPage, ApprovalTaskLog entity){
        Page<ApprovalTaskLog> page=selectPage(entityPage, entity);
        return R.success(page);
    }

    /**
    * 添加
    * @param  approvalTaskLog 实体
    * @return success/false
    */
    @PostMapping
    public R<Boolean> add(@RequestBody ApprovalTaskLog approvalTaskLog){
        return new R<>(approvalTaskLogService.insert(approvalTaskLog));
    }

    /**
    * 删除
    * @param id ID
    * @return success/false
    */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id){
        ApprovalTaskLog approvalTaskLog =new ApprovalTaskLog();
        approvalTaskLog.setId(id);
        approvalTaskLog.setDelFlag(CommonConstant.STATUS_DEL);
        approvalTaskLog.setGmtUpdate(new Date());
        return new R<>(approvalTaskLogService.updateById(approvalTaskLog));
    }

    /**
    * 编辑
    * @param  approvalTaskLog 实体
    * @return success/false
    */
    @PutMapping
    public R<Boolean> edit(@RequestBody ApprovalTaskLog approvalTaskLog){
        approvalTaskLog.setGmtUpdate(new Date());
        return new R<>(approvalTaskLogService.updateById(approvalTaskLog));
    }
}
