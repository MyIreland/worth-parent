package cn.worth.common.config;

import com.baomidou.mybatisplus.plugins.PaginationInterceptor;
import com.baomidou.mybatisplus.plugins.PerformanceInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Properties;

@Configuration
@MapperScan("cn.worth.**.mapper")
public class MybatisPlusConfig {
    /**
     * 分页插件
     *
     * @return PaginationInterceptor
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        return new PaginationInterceptor();
    }

    /**
     * 数据权限插件
     *
     * @return DataScopeInterceptor
     */
//    @Bean
//    public DataScopeInterceptor dataScopeInterceptor() {
//        return new DataScopeInterceptor();
//    }

    /**
     * 打印 sql
     */
//    @Bean
//    public PerformanceInterceptor performanceInterceptor() {
//        PerformanceInterceptor performanceInterceptor =new PerformanceInterceptor();
//        //格式化sql语句
//        Properties properties =new Properties();
//        properties.setProperty("format", "false");
//        performanceInterceptor.setProperties(properties);
//
//        return performanceInterceptor;
//
//    }
}