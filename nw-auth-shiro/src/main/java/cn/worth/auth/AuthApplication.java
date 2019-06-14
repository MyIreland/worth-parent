package cn.worth.auth;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * @Author: MyIreland
 * @Date: 2019/6/13 18:00
 * @Version 1.0
 */
@SpringBootApplication
@ComponentScan(basePackages = "cn.worth")
@MapperScan("cn.worth.*.mapper")
public class AuthApplication {

    public static void main(String[] args) {
        SpringApplication.run(AuthApplication.class, args);
    }
}
