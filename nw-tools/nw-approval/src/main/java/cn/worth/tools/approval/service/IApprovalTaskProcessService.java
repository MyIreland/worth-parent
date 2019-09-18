package cn.worth.tools.approval.service;

import cn.worth.tools.approval.domain.ApprovalTaskProcess;
import com.baomidou.mybatisplus.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-17
 */
public interface IApprovalTaskProcessService extends IService<ApprovalTaskProcess> {

    List<ApprovalTaskProcess> getByTaskId(Long id);

    Boolean updateStatus(Long taskProcessId, Integer status, Long id);

    List<Long> getMyApproveTaskIds(Integer status, Long userId);
}
