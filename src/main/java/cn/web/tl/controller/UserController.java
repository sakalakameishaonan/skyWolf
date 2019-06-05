package cn.web.tl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sys")
public class UserController {

    @RequestMapping(value = "/main")
    public String log(){
        return "/admin/main";
    }
}
