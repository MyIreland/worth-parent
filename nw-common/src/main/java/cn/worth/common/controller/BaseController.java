package cn.worth.common.controller;

import cn.worth.common.pojo.R;
import cn.worth.common.vo.UserVO;
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

    public R list(Page<T> page, T model) {
        Page<T> pageList = service.selectPage(page, new EntityWrapper<>(model));
        return R.success(pageList);
    }

    public UserVO getUser() {
        return null;
    }

    public Long getUserId() {
        return null;
    }

    public String getUsername() {
        return null;
    }
}
