package cn.worth.thirdparty.quartz.controller;
import java.util.Map;
import java.util.Date;

import cn.worth.thirdparty.quartz.domain.Task;
import cn.worth.thirdparty.quartz.service.ITaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.*;
import cn.worth.common.constant.CommonConstant;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import cn.worth.common.pojo.R;
import cn.worth.common.controller.BaseController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-09-09
 */
@RestController
@RequestMapping("/task")
public class TaskController extends BaseController {

    @Autowired
    private ITaskService taskService;

    /**
    * 通过ID查询
    *
    * @param id ID
    * @return Task
    */
    @GetMapping("/{id}")
    public R<Task> get(@PathVariable Long id){
        return new R<>(taskService.selectById(id));
    }


    /**
    * 分页查询信息
    *
    * @return 分页对象
    */
    @RequestMapping("/page")
    public R page(Page<Task> entityPage, Task entity){
        Page<Task> page=selectPage(entityPage, null);
        return R.success(page);
    }

    /**
    * 添加
    * @param  task 实体
    * @return success/false
    */
    @PostMapping
    public R<Boolean> add(@RequestBody Task task){
        return new R<>(taskService.insert(task));
    }

    /**
    * 删除
    * @param id ID
    * @return success/false
    */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id){
        Task task =new Task();
        task.setId(id);
        task.setDelFlag(CommonConstant.STATUS_DEL);
        task.setGmtUpdate(new Date());
        return new R<>(taskService.updateById(task));
    }

    /**
    * 编辑
    * @param  task 实体
    * @return success/false
    */
    @PutMapping
    public R<Boolean> edit(@RequestBody Task task){
        task.setGmtUpdate(new Date());
        return new R<>(taskService.updateById(task));
    }
}
