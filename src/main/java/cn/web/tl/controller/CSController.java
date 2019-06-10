package cn.web.tl.controller;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author FanWeichong
 * @date 2019-06-08 11:30
 */
@Controller
@RequestMapping("/orderCheck")
public class CSController {

    @RequestMapping("/toOrderCheck")
    public String toOrderCheck(){
        return "CustomerService/orderList";
    }
}
