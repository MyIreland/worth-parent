package cn.worth.common.config;

import cn.worth.common.utils.RedisClientManager;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.core.StringRedisTemplate;

@Configuration
public class RedisClientAutoConfiguration {

    @Value("${worth.env.redis.key.prefix}")
    private String keyPrefix;

    @Bean
    @ConditionalOnMissingBean
    public RedisClientManager redisClientManager(StringRedisTemplate redisTemplate) {
        return new RedisClientManager(keyPrefix, redisTemplate);
    }
}