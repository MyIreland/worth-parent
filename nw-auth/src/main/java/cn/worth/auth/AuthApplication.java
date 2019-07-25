package cn.worth.auth;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * @auth: chenxiaoqing
 * @Date: 2019-07-24
 * @Description: 描述
 **/

@SpringBootApplication
@ComponentScan("cn.worth")
@MapperScan("cn.worth.*.mapper")
public class AuthApplication {
    public static void main(String[] args) {
        SpringApplication.run(AuthApplication.class, args);
    }
}
