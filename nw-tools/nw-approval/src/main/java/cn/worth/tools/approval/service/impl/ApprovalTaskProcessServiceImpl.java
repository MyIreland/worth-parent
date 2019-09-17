package cn.worth.tools.approval.service.impl;

import cn.worth.tools.approval.domain.ApprovalTaskProcess;
import cn.worth.tools.approval.mapper.ApprovalTaskProcessMapper;
import cn.worth.tools.approval.service.IApprovalTaskProcessService;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

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

    @Override
    public List<ApprovalTaskProcess> getByTaskId(Long id) {
        EntityWrapper<ApprovalTaskProcess> wrapper = new EntityWrapper<>();
        wrapper.eq("task_id", id);
        return selectList(wrapper);
    }
}
