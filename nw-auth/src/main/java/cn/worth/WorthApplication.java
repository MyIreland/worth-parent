package cn.worth;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/6
 * @Description:
 * @Modified by:
 */
@SpringBootApplication
@ComponentScan(basePackages = "cn.worth")
@MapperScan("cn.worth.admin.mapper")
public class WorthApplication {

    public static void main(String[] args) {
        SpringApplication.run(WorthApplication.class, args);
    }
}
