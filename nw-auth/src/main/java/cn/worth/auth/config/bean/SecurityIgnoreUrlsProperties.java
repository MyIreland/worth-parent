package cn.worth.auth.config.bean;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: MyIreland on.
 * @Description:
 * @Date: 2019/3/17
 */
@Configuration
@Getter
@Setter
@Component
@ConfigurationProperties(prefix = "ignore")
public class SecurityIgnoreUrlsProperties {

    private List<String> urls = new ArrayList<>();
}
