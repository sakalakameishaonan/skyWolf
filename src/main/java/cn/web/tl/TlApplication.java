package cn.web.tl;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@SpringBootApplication
@MapperScan(basePackages = "cn.web.tl.dao")
public class TlApplication {

    public static void main(String[] args) {
        SpringApplication.run(TlApplication.class, args);
        System.out.println("我修改了这里！引导类2");
        System.out.println("到此二游");
    }

}
