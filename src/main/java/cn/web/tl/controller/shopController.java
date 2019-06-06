package cn.web.tl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shop")
public class shopController {
    @RequestMapping("/openShop")
    public String openShop(){
        return "openShop";
    }


}
