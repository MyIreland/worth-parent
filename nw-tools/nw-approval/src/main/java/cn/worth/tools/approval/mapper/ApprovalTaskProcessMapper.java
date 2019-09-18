package cn.worth.tools.approval.mapper;

import cn.worth.tools.approval.domain.ApprovalTaskProcess;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-17
 */
public interface ApprovalTaskProcessMapper extends BaseMapper<ApprovalTaskProcess> {

    List<Long> getMyApproveTaskIds(@Param("status")Integer status, @Param("userId") Long userId);
}
