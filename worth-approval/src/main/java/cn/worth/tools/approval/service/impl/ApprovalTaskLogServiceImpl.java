package cn.worth.tools.approval.service.impl;

import cn.worth.tools.approval.domain.ApprovalTaskLog;
import cn.worth.tools.approval.mapper.ApprovalTaskLogMapper;
import cn.worth.tools.approval.service.IApprovalTaskLogService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 审批任务操作记录表 服务实现类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-17
 */
@Service
public class ApprovalTaskLogServiceImpl extends ServiceImpl<ApprovalTaskLogMapper, ApprovalTaskLog> implements IApprovalTaskLogService {

}
