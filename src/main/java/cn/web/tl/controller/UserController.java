package cn.web.tl.controller;

import cn.web.tl.entity.User;
import cn.web.tl.service.UserService;
import cn.web.tl.util.Constants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/sys")
public class UserController {

    @Resource
    private UserService service;

    @RequestMapping(value = "/doLogin",method = RequestMethod.POST)
    public String doLogin(@RequestParam("account") String account, @RequestParam("password") String pwd, HttpSession session){
        User user = service.login(account, pwd);
        if (user != null){
            session.setAttribute(Constants.USER_SESSION,account);
            return "/admin/admin";
        } else {
            return "login";
        }
    }

    @RequestMapping(value = "/main")
    public String log(){
        return "/admin/admin";

    }


}
