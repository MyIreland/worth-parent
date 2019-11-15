package cn.worth.applet.service.impl;

import cn.worth.applet.config.AppletProperties;
import cn.worth.applet.domain.AppletUser;
import cn.worth.applet.helper.AppletApiHelper;
import cn.worth.applet.mapper.AppletUserMapper;
import cn.worth.applet.param.AppletApiParam;
import cn.worth.applet.service.IAppletUserService;
import cn.worth.applet.vos.AppletJsCode2sessionVO;
import cn.worth.common.exception.BusinessException;
import cn.worth.common.pojo.R;
import cn.worth.common.utils.StringUtils;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author chenxiaoqing
 * @since 2019-11-14
 */
@Slf4j
@Service
public class AppletUserServiceImpl extends ServiceImpl<AppletUserMapper, AppletUser> implements IAppletUserService {

    @Autowired
    private AppletApiHelper appletApiHelper;

    @Override
    public R login(AppletApiParam param) {
        AppletJsCode2sessionVO appletJsCode2sessionVO = appletApiHelper.jsCode2session(param.getCode());
        return R.success(appletJsCode2sessionVO);
    }

    @Override
    public R accessToken(AppletApiParam param) {
        String code = param.getCode();
        if (StringUtils.isNotBlank(code)) {

        }
//        Map<String, Object> data = new HashMap();
//        try {
//            String url = String.format("https://api.weixin.qq.com/sns/oauth2/access_token?appid=%s&secret=%s&code=%s&grant_type=authorization_code",
//                    appId, secret, code);
//            CloseableHttpClient httpCilent = HttpClients.createDefault();
//            HttpGet httpGet = new HttpGet(url);
//            String srtResult ;
//            HttpResponse httpResponse = httpCilent.execute(httpGet);
//            if (httpResponse.getStatusLine().getStatusCode() == 200) {
//                srtResult = EntityUtils.toString(httpResponse.getEntity());//获得返回的结果
//                JSONObject json = (JSONObject) JSONObject.parse(srtResult);
//                if (json.get("access_token") != null) {
//                    String access_token=json.get("access_token").toString();
//                    String openid=json.get("openid").toString();
//                    data.put("access_token",access_token);
//                    data.put("openid",openid);
//                    return data;
//                }
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
        return null;
    }
}
