package cn.web.tl.controller;

import cn.web.tl.entity.User;
import cn.web.tl.service.UserService;
import cn.web.tl.util.Constants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
//@RequestMapping("/sys")
public class UserController {

    @Resource
    private UserService service;

    @PostMapping(value = "/doLogin")
    public String doLogin(@RequestParam("account") String account, @RequestParam("password") String pwd, HttpSession session){
        User user = service.login(account, pwd);
        if (user != null){
            session.setAttribute(Constants.USER_SESSION,account);
            return "redirect:/sys/main.html";
        } else {
            return "login";
        }
    }

    @RequestMapping(value = "/sys/main.html")
    public String log(){
        return "admin";
    }

    @RequestMapping("/")
    public String index(){
        return "index";
    }
}
