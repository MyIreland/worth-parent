package cn.worth;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @Author: chenxiaoqing9
 * @Date: Created in 2019/3/6
 * @Description:
 * @Modified by:
 */
@SpringBootApplication
@MapperScan("cn.worth")
public class WorthApplication {

    public static void main(String[] args) {
        SpringApplication.run(WorthApplication.class, args);
    }
}
