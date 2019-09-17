package cn.worth.tools.approval.service.impl;

import cn.worth.tools.approval.domain.ApprovalModel;
import cn.worth.tools.approval.domain.ApprovalModelProcess;
import cn.worth.tools.approval.enums.ModelStatusEnum;
import cn.worth.tools.approval.mapper.ApprovalModelProcessMapper;
import cn.worth.tools.approval.service.IApprovalModelProcessService;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 审批节点 服务实现类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-17
 */
@Service
public class ApprovalModelProcessServiceImpl extends ServiceImpl<ApprovalModelProcessMapper, ApprovalModelProcess> implements IApprovalModelProcessService {

    @Override
    public List<ApprovalModelProcess> selectListByModelId(Long modelId) {
        EntityWrapper<ApprovalModelProcess> modelWrapper = new EntityWrapper<>();
        modelWrapper.eq("model_id", modelId);
        return selectList(modelWrapper);
    }

    @Override
    public Boolean deleteByModelId(Long id) {
        EntityWrapper<ApprovalModelProcess> modelWrapper = new EntityWrapper<>();
        modelWrapper.eq("model_id", id);
        return delete(modelWrapper);
    }
}
