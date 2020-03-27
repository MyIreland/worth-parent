package cn.worth.springboot.autoconfig.redis;

import cn.worth.springboot.autoconfig.redis.properties.WorthRedisProperties;
import cn.worth.springboot.autoconfig.redis.utils.RedisClient;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.serializer.GenericJackson2JsonRedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;

@Slf4j
@Configuration
@EnableConfigurationProperties(WorthRedisProperties.class)
public class WorthRedisAutoConfiguration {

    @Autowired
    private RedisConnectionFactory factory;

    @Autowired
    private WorthRedisProperties worthRedisProperties;

    /**
     * 配置RedisTemplate
     *
     * @return
     */
    @Bean
    public StringRedisTemplate redisTemplate() {
        StringRedisTemplate template = new StringRedisTemplate(factory);
        GenericJackson2JsonRedisSerializer genericJackson2JsonRedisSerializer = new GenericJackson2JsonRedisSerializer();

        StringRedisSerializer stringRedisSerializer = new StringRedisSerializer();
        // 设置value的序列化规则和 key的序列化规则
        template.setKeySerializer(stringRedisSerializer);
        template.setValueSerializer(genericJackson2JsonRedisSerializer);

        template.setHashKeySerializer(stringRedisSerializer);
        template.setHashValueSerializer(genericJackson2JsonRedisSerializer);

        template.setDefaultSerializer(genericJackson2JsonRedisSerializer);
        template.setEnableDefaultSerializer(true);
        template.afterPropertiesSet();
        return template;
    }

    @Bean
    @ConditionalOnProperty(prefix="spring.redis", name = "enable", havingValue = "true")
    public RedisClient redisClient() {
        String keyPrefix = worthRedisProperties.getKeyPrefix();
        return new RedisClient(keyPrefix, redisTemplate());
    }



}
