package cn.worth.tools.approval.service.impl;

import cn.worth.common.exception.BusinessException;
import cn.worth.common.utils.AssertUtils;
import cn.worth.tools.approval.domain.ApprovalTask;
import cn.worth.tools.approval.domain.ApprovalTaskProcess;
import cn.worth.tools.approval.enums.TaskStatusEnum;
import cn.worth.tools.approval.mapper.ApprovalTaskProcessMapper;
import cn.worth.tools.approval.service.IApprovalTaskProcessService;
import cn.worth.tools.approval.service.IApprovalTaskService;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-17
 */
@Service
public class ApprovalTaskProcessServiceImpl extends ServiceImpl<ApprovalTaskProcessMapper, ApprovalTaskProcess> implements IApprovalTaskProcessService {

    @Autowired
    private IApprovalTaskService taskService;

    @Override
    public List<ApprovalTaskProcess> getByTaskId(Long id) {
        EntityWrapper<ApprovalTaskProcess> wrapper = new EntityWrapper<>();
        wrapper.eq("task_id", id);
        return selectList(wrapper);
    }

    @Override
    @Transactional
    public Boolean updateStatus(Long taskProcessId, Integer status, Long userId) {
        AssertUtils.isNull(taskProcessId, "taskProcessId is null");
        AssertUtils.isNull(status, "status is null");
        ApprovalTaskProcess currentTaskProcess = selectById(taskProcessId);
        AssertUtils.isNull(currentTaskProcess, "currentTaskProcess is not exist");
        AssertUtils.verifyEquals(currentTaskProcess.getUserId(), userId, "you can not update this task");

        ApprovalTaskProcess taskProcessForUpdate = new ApprovalTaskProcess();
        taskProcessForUpdate.setId(taskProcessId);
        taskProcessForUpdate.setStatus(status);
        boolean taskProcessUpdateResult = updateById(taskProcessForUpdate);
        if(taskProcessUpdateResult){
            Long taskId = currentTaskProcess.getTaskId();
            ApprovalTask task = taskService.selectById(taskId);
            Integer taskStatus = task.getStatus();
            verifyTaskStatus(taskStatus);
            switch (status) {
                case 1://同意
                    Integer sort = currentTaskProcess.getSort();
                    if(task.getTotalProcess().equals(sort)){//最后一层过程审批完成
                        ApprovalTask taskForUpdate = new ApprovalTask();
                        taskForUpdate.setId(task.getId());
                        taskForUpdate.setStatus(TaskStatusEnum.PASS.getCode());
                        taskService.updateById(taskForUpdate);
                    }
                    break;
                case 2://拒绝
                    ApprovalTask taskForUpdate = new ApprovalTask();
                    taskForUpdate.setId(task.getId());
                    taskForUpdate.setStatus(TaskStatusEnum.REFUSE.getCode());
                    taskService.updateById(taskForUpdate);
                    break;
            }
        }
        return true;
    }

    @Override
    public Set<Long> getMyApproveTaskIds(Integer status, Long userId) {
        return baseMapper.getMyApproveTaskIds(status, userId);
    }

    private void verifyTaskStatus(Integer taskStatus) {
        if(TaskStatusEnum.RUNNING.getCode() != taskStatus){
            throw new BusinessException("this task taskStatus not in running");
        }
    }
}
