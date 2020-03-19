package cn.worth.core.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.IService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @Author: MyIreland on.
 * @Description:
 * @Date: 2019/3/22
 */
public class BaseController<E extends IService<T>, T> {

    @Autowired
    protected E baseService;

    protected Page<T> selectPage(Page<T> page, EntityWrapper<T> entityWrapper) {
        if(null == entityWrapper){
            entityWrapper = new EntityWrapper<>();
            entityWrapper.orderBy("id");
        }
        Page<T> pageList = baseService.selectPage(page, entityWrapper);
        return pageList;
    }
}
