package cn.web.tl;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@SpringBootApplication
@MapperScan(basePackages = "cn.web.tl.dao")
public class TlApplication {

    public static void main(String[] args) {
        SpringApplication.run(TlApplication.class, args);
    }
}
