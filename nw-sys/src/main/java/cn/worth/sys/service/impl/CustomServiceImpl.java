package cn.worth.sys.service.impl;

import cn.worth.sys.domain.Custom;
import cn.worth.sys.mapper.CustomMapper;
import cn.worth.sys.service.ICustomService;
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
public class CustomServiceImpl extends ServiceImpl<CustomMapper, Custom> implements ICustomService {

}
