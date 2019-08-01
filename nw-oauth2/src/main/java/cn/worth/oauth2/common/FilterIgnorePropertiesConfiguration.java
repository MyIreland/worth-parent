package cn.worth.oauth2.common;

import lombok.Data;
import org.springframework.boot.autoconfigure.condition.ConditionalOnExpression;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import java.util.ArrayList;
import java.util.List;

/**
 * 访问请求路径权限校验过滤配置
 * @author zhangjinkun@xdf.cn
 * @date 2018/7/25
 */
@Data
@Configuration
@ConditionalOnExpression("!'${ignore}'.isEmpty()")
@ConfigurationProperties(prefix = "ignore")
public class FilterIgnorePropertiesConfiguration {
    private List<String> urls = new ArrayList<>();

    private List<String> clients = new ArrayList<>();
}
