package cn.worth.auth.config;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import java.util.LinkedList;

/**
 * @Author: MyIreland
 * @Date: 2019/6/14 18:16
 * @Version 1.0
 */
@Getter
@Setter
@Configuration
@ConfigurationProperties(prefix = "shiro")
public class ShiroFilterUrlRuleMapProperties {

    private LinkedList<String> ignoreUrls;

}