package cn.worth.file.config;

import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-10-29
 * @description
 **/
@Configuration
@EnableConfigurationProperties(OssProperties.class)
public class OssConfig {
    private final OssProperties ossProps;

    @Autowired
    public OssConfig(OssProperties ossProps) {
        this.ossProps = ossProps;
    }

    @Bean
    public OSS ossInnerClient() {
        return new OSSClientBuilder().build(ossProps.getEndpointInternal(),
                ossProps.getAccessKeyId(), ossProps.getAccessKeySecret());
    }

    @Bean
    public OSS ossClient() {
        return new OSSClientBuilder().build(ossProps.getEndpoint(),
                ossProps.getAccessKeyId(), ossProps.getAccessKeySecret());
    }
}
