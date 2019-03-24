package cn.worth.admin.service.impl;

import cn.worth.admin.domain.Dept;
import cn.worth.admin.mapper.DeptMapper;
import cn.worth.admin.service.IDeptService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 部门管理 服务实现类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
@Service
public class DeptServiceImpl extends ServiceImpl<DeptMapper, Dept> implements IDeptService {

}
