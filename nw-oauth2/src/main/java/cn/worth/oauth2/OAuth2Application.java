package cn.worth.oauth2;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * @author myireland
 * @version 1.0.0
 * @date 2019-08-01
 * @description
 **/
@SpringBootApplication
@MapperScan("cn.worth.*.mapper")
@ComponentScan("cn.worth")
public class OAuth2Application {

    public static void main(String[] args) {
        SpringApplication.run(OAuth2Application.class, args);
    }

}
