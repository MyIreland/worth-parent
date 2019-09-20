package cn.worth.tools.approval.service;

import cn.worth.tools.approval.domain.ApprovalTask;
import cn.worth.tools.approval.vo.ApprovalTaskVO;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 * 审批任务 服务类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-17
 */
public interface IApprovalTaskService extends IService<ApprovalTask> {

    ApprovalTaskVO getVO(Long id);

    Page<ApprovalTaskVO> pageVO(Page<ApprovalTaskVO> entityPage, ApprovalTaskVO vo);

    ApprovalTask add(Long modelId, ApprovalTask task);

    Page<ApprovalTaskVO> pageByUser(Page<ApprovalTaskVO> entityPage, ApprovalTaskVO vo, Long id);

    Page<ApprovalTaskVO> pageMyApprove(Page<ApprovalTaskVO> entityPage, Long id);

    Boolean recall(Long taskId, Long userId);

    /**
     * 审批任务当前节点
     * @param taskId
     * @param status
     * @param id
     * @return
     */
    Boolean updateCurrentProcessStatus(Long taskId, Integer status, Long id);
}
