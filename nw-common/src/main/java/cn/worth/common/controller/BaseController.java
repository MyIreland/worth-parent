package cn.worth.common.controller;

import cn.worth.common.vo.LoginUser;
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
    private E service;

    protected Page<T> selectPage(Page<T> page, T model) {
        Page<T> pageList = service.selectPage(page, new EntityWrapper<>(model));
        return pageList;
    }

    public LoginUser getUser() {
        return null;
    }

    public Long getUserId() {
        return null;
    }

    public String getUsername() {
        return null;
    }
}
