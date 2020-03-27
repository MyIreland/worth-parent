package cn.worth.springboot.starter.mysql;

import cn.worth.springboot.starter.mysql.properties.DruidSourceProperties;
import com.alibaba.druid.pool.DruidDataSource;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.ImportAutoConfiguration;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

import javax.sql.DataSource;
import java.sql.SQLException;
@Slf4j
@Configuration
@ImportAutoConfiguration()
@EnableConfigurationProperties(DruidSourceProperties.class)
@ConditionalOnProperty(prefix="spring.druid", name = "enable", matchIfMissing = true)
@EnableAutoConfiguration
public class WorthMysqlAutoConfiguration {

    @Bean(name = {"druidDataSource"})
    @Primary
    @ConditionalOnMissingBean(name = {"druidDataSource", "virtualDataSource"})
    public DataSource dataSource(DruidSourceProperties druidSourceProperties) {
        log.info("init Druid DataSource Configuration ");
        DruidDataSource dataSource = new DruidDataSource();
        dataSource.setUrl(druidSourceProperties.getUrl());
        dataSource.setUsername(druidSourceProperties.getUsername());
        dataSource.setPassword(druidSourceProperties.getPassword());
        dataSource.setDriverClassName(druidSourceProperties.getDriverClassName());
        dataSource.setInitialSize(druidSourceProperties.getInitialSize());
        dataSource.setMinIdle(druidSourceProperties.getMinIdle());
        dataSource.setMaxActive(druidSourceProperties.getMaxActive());
        dataSource.setMaxWait((long)druidSourceProperties.getMaxWait());
        dataSource.setTimeBetweenEvictionRunsMillis((long)druidSourceProperties.getTimeBetweenEvictionRunsMillis());
        dataSource.setMinEvictableIdleTimeMillis((long)druidSourceProperties.getMinEvictableIdleTimeMillis());
        dataSource.setValidationQuery(druidSourceProperties.getValidationQuery());
        dataSource.setTestWhileIdle(druidSourceProperties.isTestWhileIdle());
        dataSource.setTestOnBorrow(druidSourceProperties.isTestOnBorrow());
        dataSource.setTestOnReturn(druidSourceProperties.isTestOnReturn());
        dataSource.setPoolPreparedStatements(druidSourceProperties.isPoolPreparedStatements());
        dataSource.setMaxPoolPreparedStatementPerConnectionSize(druidSourceProperties.getMaxPoolPreparedStatementPerConnectionSize());
        try {
            dataSource.setFilters(druidSourceProperties.getFilters());
        } catch (SQLException var4) {
            log.error("druid configuration initialization filter: ", var4);
        }
        dataSource.setConnectionProperties(druidSourceProperties.getConnectionProperties());
        return dataSource;
    }
}
