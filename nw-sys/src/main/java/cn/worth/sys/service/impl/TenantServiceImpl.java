package cn.worth.sys.service.impl;

import cn.worth.sys.domain.Organization;
import cn.worth.sys.mapper.OrganizationMapper;
import cn.worth.sys.service.IOrganizationService;
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
public class TenantServiceImpl extends ServiceImpl<OrganizationMapper, Organization> implements IOrganizationService {

}
