package cn.worth.admin.service.impl;

import cn.worth.admin.domain.Org;
import cn.worth.admin.mapper.OrgMapper;
import cn.worth.admin.service.IOrgService;
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
public class OrgServiceImpl extends ServiceImpl<OrgMapper, Org> implements IOrgService {

}
