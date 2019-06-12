package cn.web.tl.controller;

import cn.web.tl.service.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;

/**
 * @author dxq
 * @date 2019-06-10 - 21:35
 */
@Controller
public class CustomerController {

    @Resource
    private CustomerService service;

    @GetMapping("/toCustomerCenter")
    public String toCustomerCenter(){
        return "";
    }

}
