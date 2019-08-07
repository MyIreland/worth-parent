package cn.worth.sys.service.impl;

import cn.worth.sys.domain.Tenant;
import cn.worth.sys.mapper.OrgMapper;
import cn.worth.sys.service.ITenantService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-03-22
 */
@Service
public class TenantServiceImpl extends ServiceImpl<OrgMapper, Tenant> implements ITenantService {

}
