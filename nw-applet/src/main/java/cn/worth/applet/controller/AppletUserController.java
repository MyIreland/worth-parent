package cn.worth.applet.controller;

import cn.worth.applet.domain.AppletUser;
import cn.worth.applet.param.AppletApiParam;
import cn.worth.applet.service.IAppletUserService;
import cn.worth.common.controller.BaseController;
import cn.worth.common.pojo.R;
import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.web.bind.annotation.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-11-14
 */
@RestController
@RequestMapping("/applet/user")
public class AppletUserController extends BaseController<IAppletUserService, AppletUser> {

    /**
     * 微信用户授权获取openId
     * @param param
     * @return openId
     */
    @PostMapping("login")
    public R login(AppletApiParam param){
        return baseService.login(param);
    }

    @PostMapping("accessToken")
    public R accessToken(AppletApiParam param){
        return baseService.accessToken(param);
    }

    /**
    * 通过ID查询
    *
    * @param id ID
    * @return AppletUser
    */
    @PostMapping("/detail")
    public R<AppletUser> get(@PathVariable Long id){
        return new R<>(baseService.selectById(id));
    }


    /**
    * 分页查询信息
    *
    * @return 分页对象
    */
    @PostMapping("/page")
    public R page(Page<AppletUser> entityPage, AppletUser entity){
        Page<AppletUser> page=selectPage(entityPage, null);
        return R.success(page);
    }

    /**
    * 添加
    * @param  appletUser 实体
    * @return success/false
    */
    @PostMapping
    public R<Boolean> add(@RequestBody AppletUser appletUser){
        return new R<>(baseService.insert(appletUser));
    }

    /**
    * 删除
    * @param id ID
    * @return success/false
    */
    @DeleteMapping("/{id}")
    public R<Boolean> delete(@PathVariable Long id){
        AppletUser appletUser =new AppletUser();
        appletUser.setId(id);
        return new R<>(baseService.updateById(appletUser));
    }

    /**
    * 编辑
    * @param  appletUser 实体
    * @return success/false
    */
    @PutMapping
    public R<Boolean> edit(@RequestBody AppletUser appletUser){
        return new R<>(baseService.updateById(appletUser));
    }
}
