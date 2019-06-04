package cn.web.tl.config;

import cn.web.tl.interceptor.SysInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.*;

import javax.annotation.Resource;

@Configuration
public class SpringbootConfig extends WebMvcConfigurationSupport {
    @Resource
    private SysInterceptor interceptor;
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(interceptor).addPathPatterns("/sys/**");
        super.addInterceptors(registry);
    }
}





