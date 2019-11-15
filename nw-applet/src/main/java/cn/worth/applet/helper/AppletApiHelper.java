package cn.worth.applet.helper;

import cn.worth.applet.vos.AppletJsCode2sessionVO;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-11-15
 * @description 获取微信小程序后台接口
 **/
public interface AppletApiHelper {
    /**
     * 获取appId +
     * @param js_code
     * @return
     */
    AppletJsCode2sessionVO jsCode2session(String js_code);

}
