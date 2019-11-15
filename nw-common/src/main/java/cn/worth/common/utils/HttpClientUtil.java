package cn.worth.common.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * @Author: MyIreland
 * @Date: 2019/5/27 16:23
 * @Version 1.0
 */
@Slf4j
public class HttpClientUtil {

    private static final String DEFAULT_CHARSET = "utf-8";
    private static final String CONTENT_TYPE = "application/json";

    private static CloseableHttpClient client;

    private static HttpClient getInstance(){
        if(client == null){
            synchronized (HttpClientUtil.class){
                client = HttpClients.createDefault();
            }
        }
        return client;
    }

    public static <T> T doPost(String url,  Map<String, Object> map, Class<T> entity) {
        log.info("HttpClientUtil doPost:{}, param:{}", url, JSON.toJSONString(map));
        HttpPost httpPost = new HttpPost(url);
        httpPost.addHeader("Accept", CONTENT_TYPE);
        if (map != null) {
            JSONObject jsonParam = new JSONObject();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                if(null == entry.getValue()){
                    continue;
                }
                jsonParam.put(entry.getKey(), entry.getValue());
            }
            StringEntity stringEntity = new StringEntity(jsonParam.toString(), DEFAULT_CHARSET);//解决中文乱码问题
            stringEntity.setContentEncoding(DEFAULT_CHARSET);
            stringEntity.setContentType(CONTENT_TYPE);
            httpPost.setEntity(stringEntity);
        }
        try {
            HttpResponse response = getInstance().execute(httpPost);
            String resStr = EntityUtils.toString(response.getEntity(), DEFAULT_CHARSET);

            log.info("HttpClientUtil doPost:{}, result:{}", url, resStr);
            return JSON.parseObject(resStr, entity);
        } catch (Exception e){
            log.info("HttpClientUtil doPost:{}, error", url, e);
        }
        return null;
    }

    public static <T> T doGet(String url, Class<T> entity) {
        return doGet(url, null, entity);
    }

    public static<T> T doGet(String url, Map<String, Object> map, Class<T> entity) {
        try {
            log.info("HttpClientUtil doGet:{}, param:{}", url, JSON.toJSONString(map));
            // 声明URIBuilder
            URIBuilder uriBuilder = new URIBuilder(url);
            // 判断参数map是否为非空
            if (map != null) {
                List<NameValuePair> list = new LinkedList<>();
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    BasicNameValuePair param = new BasicNameValuePair(entry.getKey(), entry.getValue().toString());
                    list.add(param);
                }
                uriBuilder.setParameters(list);
            }
            HttpGet httpGet = new HttpGet(uriBuilder.build());
            HttpResponse response = getInstance().execute(httpGet);
            String resStr = EntityUtils.toString(response.getEntity(), DEFAULT_CHARSET);
            log.info("HttpClientUtil doGet:{}, result:{}", url, resStr);
            return JSON.parseObject(resStr, entity);
        } catch (Exception e) {
            log.error("HttpClientUtil doGet:{} error", url, e);
        }
        return null;
    }
}