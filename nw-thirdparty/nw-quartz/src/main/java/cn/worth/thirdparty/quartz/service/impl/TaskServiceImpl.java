package cn.worth.thirdparty.quartz.service.impl;

import cn.worth.thirdparty.quartz.domain.Task;
import cn.worth.thirdparty.quartz.mapper.TaskMapper;
import cn.worth.thirdparty.quartz.service.ITaskService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-09
 */
@Service
public class TaskServiceImpl extends ServiceImpl<TaskMapper, Task> implements ITaskService {

}
