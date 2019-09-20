package cn.worth.tools.approval.controller;

import cn.worth.common.annotation.CurrentUser;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import cn.worth.common.vo.LoginUser;
import cn.worth.tools.approval.domain.ApprovalTask;
import cn.worth.tools.approval.service.IApprovalTaskService;
import cn.worth.tools.approval.vo.ApprovalTaskVO;
import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.web.bind.annotation.*;

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
     * 获取我审批的任务
     * @param entityPage
     * @param status
     * @param loginUser
     * @return
     */
    @PostMapping("/pageMyApprove")
    public R pageMyApprove(Page<ApprovalTaskVO> entityPage, Integer status, @CurrentUser LoginUser loginUser) {
        Page<ApprovalTaskVO> page = baseService.pageMyApprove(entityPage, status, loginUser.getId());
        return R.success(page);
    }
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
    @PostMapping("/page")
    public R page(Page<ApprovalTaskVO> entityPage, ApprovalTaskVO vo) {
        Page<ApprovalTaskVO> page = baseService.pageVO(entityPage, vo);
        return R.success(page);
    }

    /**
     * 查询当前用户创建的审批
     *
     * @return 分页对象
     */
    @PostMapping("/pageByUser")
    public R pageByUser(Page<ApprovalTaskVO> entityPage, ApprovalTaskVO vo, @CurrentUser LoginUser loginUser) {
        Page<ApprovalTaskVO> page = baseService.pageByUser(entityPage, vo, loginUser.getId());
        return R.success(page);
    }

    /**
     * 添加
     *
     * @param task 实体
     * @return success/false
     */
    @PostMapping("add")
    public R<ApprovalTask> add(Long modelId, ApprovalTask task) {
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
        return new R<>(baseService.deleteById(id));
    }

    /**
     * 编辑
     *
     * @param approvalTask 实体
     * @return success/false
     */
    @PutMapping
    public R<Boolean> edit(@RequestBody ApprovalTask approvalTask) {

        ApprovalTask updateTask = new ApprovalTask();
        updateTask.setId(approvalTask.getId());
        updateTask.setName(approvalTask.getName());
        updateTask.setStatus(approvalTask.getStatus());
        return new R<>(baseService.updateById(updateTask));
    }
}
