package cn.web.tl.controller;

import cn.web.tl.entity.User;
import cn.web.tl.service.UserService;
import cn.web.tl.util.Constants;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/sys")
public class UserController {

    @RequestMapping(value = "/main")
    public String log(){
        return "/admin/admin";

    }
}
