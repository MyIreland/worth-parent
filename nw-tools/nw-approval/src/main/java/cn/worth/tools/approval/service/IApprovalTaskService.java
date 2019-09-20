package cn.worth.tools.approval.service;

import cn.worth.tools.approval.domain.ApprovalTask;
import cn.worth.tools.approval.vo.ApprovalTaskVO;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;

import java.util.List;

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

    Page<ApprovalTaskVO> pageMyApprove(Page<ApprovalTaskVO> entityPage, Integer status, Long id);
}
