package cn.web.tl;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class TlApplication {

    public static void main(String[] args) {
        SpringApplication.run(TlApplication.class, args);
        System.out.println("我修改了这里！引导类2");
        System.out.println("到此二游");
    }

}
