package cn.worth.common.config;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-09-11
 * @description
 **/

@Getter
@Setter
@Component
@ConfigurationProperties(prefix="worth")
public class WorthConfig {
    //上传路径
    private String uploadPath;
}
