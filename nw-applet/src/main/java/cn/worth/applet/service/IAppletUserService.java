package cn.worth.applet.service;

import cn.worth.applet.domain.AppletUser;
import cn.worth.applet.param.AppletApiParam;
import cn.worth.common.pojo.R;
import com.baomidou.mybatisplus.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-11-14
 */
public interface IAppletUserService extends IService<AppletUser> {

    /**
     * 微信用户授权获取openId
     * @param param
     * @return
     */
    R login(AppletApiParam param);

    R accessToken(AppletApiParam param);
}
