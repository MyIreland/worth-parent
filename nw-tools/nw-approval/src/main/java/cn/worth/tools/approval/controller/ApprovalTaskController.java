package cn.worth.tools.approval.controller;

import java.util.Map;
import java.util.Date;

import cn.worth.tools.approval.domain.ApprovalTask;
import cn.worth.tools.approval.service.IApprovalTaskService;
import cn.worth.tools.approval.vo.ApprovalTaskVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import cn.worth.common.constant.CommonConstant;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import cn.worth.common.pojo.R;
import cn.worth.common.controller.BaseController;

/**
 * <p>
 * 审批任务 前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-17
 */
@RestController
@RequestMapping("/approvalTask")
public class ApprovalTaskController extends BaseController<IApprovalTaskService, ApprovalTask> {

    /**
     * 通过ID查询
     *
     * @param id ID
     * @return ApprovalTask
     */
    @GetMapping("/{id}")
    public R<ApprovalTaskVO> get(@PathVariable Long id) {
        return new R<>(baseService.getVO(id));
    }


    /**
     * 分页查询信息
     *
     * @return 分页对象
     */
    @RequestMapping("/page")
    public R page(Page<ApprovalTaskVO> entityPage, ApprovalTaskVO vo) {
        Page<ApprovalTaskVO> page = baseService.pageVO(entityPage, vo);
        return R.success(page);
    }

    /**
     * 添加
     *
     * @param task 实体
     * @return success/false
     */
    @PostMapping("add")
    public R<Boolean> add(Long modelId, ApprovalTask task) {
        return new R<>(baseService.add(modelId, task));
    }

    /**
     * 删除
     *
     * @param id ID
     * @return success/false
     */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id) {
        ApprovalTask approvalTask = new ApprovalTask();
        approvalTask.setId(id);
        return new R<>(baseService.updateById(approvalTask));
    }

    /**
     * 编辑
     *
     * @param approvalTask 实体
     * @return success/false
     */
    @PutMapping
    public R<Boolean> edit(@RequestBody ApprovalTask approvalTask) {
        return new R<>(baseService.updateById(approvalTask));
    }
}
