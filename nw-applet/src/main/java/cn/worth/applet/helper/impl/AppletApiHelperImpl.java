package cn.worth.applet.helper.impl;

import cn.worth.applet.config.AppletProperties;
import cn.worth.applet.helper.AppletApiHelper;
import cn.worth.applet.vos.AppletJsCode2sessionVO;
import cn.worth.common.utils.HttpClientUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-11-15
 * @description
 **/
@Slf4j
@Component
public class AppletApiHelperImpl implements AppletApiHelper {
    @Autowired
    private AppletProperties appletProperties;

    @Override
    public AppletJsCode2sessionVO jsCode2session(String js_code) {
        String authUrl = String.format(appletProperties.getJsCode2sessionUrl(), appletProperties.getAppId(),
                appletProperties.getSecret(), js_code);

        return HttpClientUtil.doGet(authUrl, AppletJsCode2sessionVO.class);
    }
}
