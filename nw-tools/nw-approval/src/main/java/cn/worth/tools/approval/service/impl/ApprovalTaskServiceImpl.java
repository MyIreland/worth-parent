package cn.worth.tools.approval.service.impl;

import cn.worth.common.exception.BusinessException;
import cn.worth.common.utils.CollectionUtils;
import cn.worth.common.utils.StringUtils;
import cn.worth.tools.approval.domain.ApprovalModelProcess;
import cn.worth.tools.approval.domain.ApprovalTask;
import cn.worth.tools.approval.domain.ApprovalTaskProcess;
import cn.worth.tools.approval.enums.ApprovalErrorEnum;
import cn.worth.tools.approval.enums.TaskProcessStatusEnum;
import cn.worth.tools.approval.enums.TaskStatusEnum;
import cn.worth.tools.approval.mapper.ApprovalTaskMapper;
import cn.worth.tools.approval.service.IApprovalModelService;
import cn.worth.tools.approval.service.IApprovalTaskProcessService;
import cn.worth.tools.approval.service.IApprovalTaskService;
import cn.worth.tools.approval.vo.ApprovalModelVO;
import cn.worth.tools.approval.vo.ApprovalTaskVO;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

/**
 * <p>
 * 审批任务 服务实现类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-17
 */
@Service
public class ApprovalTaskServiceImpl extends ServiceImpl<ApprovalTaskMapper, ApprovalTask> implements IApprovalTaskService {

    @Autowired
    private IApprovalTaskProcessService taskProcessService;

    @Autowired
    private IApprovalModelService modelService;

    @Override
    public ApprovalTaskVO getVO(Long id) {
        ApprovalTaskVO taskVO = baseMapper.getVO(id);
        List<ApprovalTaskProcess> processes = taskProcessService.getByTaskId(id);
        taskVO.setProcesses(processes);
        return taskVO;
    }

    @Override
    public Page<ApprovalTaskVO> pageVO(Page<ApprovalTaskVO> entityPage, ApprovalTaskVO vo) {
        List<ApprovalTaskVO> taskVOS = baseMapper.pageVO(entityPage, vo);
        for (ApprovalTaskVO taskVO : taskVOS) {
            Long id = taskVO.getId();
            List<ApprovalTaskProcess> modelProcesses = taskProcessService.getByTaskId(id);
            taskVO.setProcesses(modelProcesses);
        }
        entityPage.setRecords(taskVOS);
        return entityPage;
    }

    @Override
    @Transactional
    public ApprovalTask add(Long modelId, ApprovalTask taskVO) {
        ApprovalModelVO approvalModelVO = modelService.get(modelId);
        List<ApprovalModelProcess> modelProcesses = approvalModelVO.getProcesses();
        ApprovalTask task = genApprovalTask(approvalModelVO, taskVO);

        boolean insertResult = insert(task);
        if(insertResult && CollectionUtils.isNotEmpty(modelProcesses)){
            List<ApprovalTaskProcess> taskProcesses = new ArrayList<>();
            Long taskId = task.getId();
            for (ApprovalModelProcess modelProcess : modelProcesses) {
                ApprovalTaskProcess taskProcess = new ApprovalTaskProcess();
                taskProcess.setName(modelProcess.getName());
                taskProcess.setTaskId(taskId);
                taskProcess.setDescription(modelProcess.getDescription());
                taskProcess.setSort(modelProcess.getSort());
                taskProcess.setUserId(modelProcess.getUserId());
                taskProcess.setUserName(modelProcess.getUserName());
                taskProcess.setStatus(TaskProcessStatusEnum.WAIT.getCode());
                taskProcesses.add(taskProcess);
            }
            taskProcessService.insertBatch(taskProcesses);
        }
        return task;
    }

    @Override
    public Page<ApprovalTaskVO> pageByUser(Page<ApprovalTaskVO> entityPage, ApprovalTaskVO vo, Long userId) {
        List<ApprovalTaskVO> taskVOS = baseMapper.pageByUser(entityPage, vo, userId);
        for (ApprovalTaskVO taskVO : taskVOS) {
            Long id = taskVO.getId();
            List<ApprovalTaskProcess> modelProcesses = taskProcessService.getByTaskId(id);
            taskVO.setProcesses(modelProcesses);
        }
        entityPage.setRecords(taskVOS);
        return entityPage;
    }

    @Override
    public Page<ApprovalTaskVO> pageMyApprove(Page<ApprovalTaskVO> entityPage, Integer status, Long userId) {

        Set<Long> taskIds = taskProcessService.getMyApproveTaskIds(status, userId);
        List<ApprovalTaskVO> taskVOS = new ArrayList<>();
        if(CollectionUtils.isNotEmpty(taskIds)){
            taskVOS = baseMapper.getByIds(entityPage, taskIds);
            for (ApprovalTaskVO taskVO : taskVOS) {
                Long id = taskVO.getId();
                List<ApprovalTaskProcess> modelProcesses = taskProcessService.getByTaskId(id);
                taskVO.setProcesses(modelProcesses);
            }
        }
        entityPage.setRecords(taskVOS);
        return entityPage;
    }

    @Override
    public Boolean recall(Long taskId, Long userId) {
        ApprovalTask task = baseMapper.selectById(taskId);
        if(null == task){
            ApprovalErrorEnum error = ApprovalErrorEnum.TASK_NOT_FOUND;
            throw new BusinessException(error.getCode(), error.getDesc());
        }
        Integer status = task.getStatus();
        if(TaskStatusEnum.RUNNING.getCode() != status){
            ApprovalErrorEnum error = ApprovalErrorEnum.TASK_STATUS_ERROR;
            throw new BusinessException(error.getCode(), error.getDesc());
        }
        Long userCreate = task.getUserCreate();
        if(!userCreate.equals(userId)){
            ApprovalErrorEnum error = ApprovalErrorEnum.TASK_OPTION_USER_ERROR;
            throw new BusinessException(error.getCode(), error.getDesc());
        }

        ApprovalTask taskForUpdate = new ApprovalTask();
        taskForUpdate.setId(taskId);
        taskForUpdate.setStatus(TaskStatusEnum.RECALL.getCode());
        return updateById(taskForUpdate);
    }

    private ApprovalTask genApprovalTask(ApprovalModelVO approvalModelVO, ApprovalTask taskVO) {
        ApprovalTask task = new ApprovalTask();
        List<ApprovalModelProcess> processes = approvalModelVO.getProcesses();
        String taskName = taskVO.getName();
        if(StringUtils.isBlank(taskName)){
            taskName = approvalModelVO.getName();
        }
        task.setName(taskName);
        task.setType(approvalModelVO.getType());
        task.setUserCreate(approvalModelVO.getUserCreate());
        task.setTenantId(approvalModelVO.getTenantId());
        task.setTotalProcess(processes.size());
        task.setGmtCreate(new Date());
        task.setStatus(TaskStatusEnum.RUNNING.getCode());
        return task;
    }
}
