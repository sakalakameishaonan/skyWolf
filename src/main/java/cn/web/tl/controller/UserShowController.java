package cn.web.tl.controller;

import cn.web.tl.entity.Account;
import cn.web.tl.service.UserShowServices;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;

@Controller
@RequestMapping(value = "/show")
public class UserShowController {
    @Resource
    private UserShowServices services;

    @RequestMapping(value = "/tologin")
    public String toLogin(){
        return "loginshow";

    }

    @RequestMapping(value = "/login" ,method = RequestMethod.POST)
    public String login(String username, String pwd, RedirectAttributes model){
        Account account=services.login(username);
        System.out.println(account);
        if (account==null){
            model.addFlashAttribute("username",username);
            model.addFlashAttribute("msg","账号或密码错误，请重新输入");
            return "redirect:/tologin";
        }else if (account.getPassword().equals(pwd)){
            model.addAttribute("ulist",account);
            return "show";
        }else {
            model.addFlashAttribute("username",username);
            model.addFlashAttribute("msg","账号或密码错误，请重新输入");
            return "redirect:/tologin";
        }
    }
}
