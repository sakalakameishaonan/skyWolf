package cn.web.tl.controller;

import cn.web.tl.entity.Account;
import cn.web.tl.service.UserShowServices;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value = "/show")
public class UserShowController {
    @Resource
    private UserShowServices services;

    @RequestMapping(value = "/tologin")
    public String toLogin() {
        return "loginshow";

    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String username, String pwd, RedirectAttributes model, HttpSession session) {
        Account account = services.login(username);
        System.out.println(account);
        if (account == null) {
            model.addFlashAttribute("username", username);
            model.addFlashAttribute("msg", "账号或密码错误，请重新输入");
            return "redirect:/tologin";
        } else if (account.getPassword().equals(pwd)) {
            System.out.println("2222" + account);
            session.setAttribute("alist", account);
            return "/";
        } else {
            model.addFlashAttribute("username", username);
            model.addFlashAttribute("msg", "账号或密码错误，请重新输入");
            return "redirect:/tologin";
        }
    }

    @RequestMapping(value = "/toadd")
    public String toadd() {
        return "add";

    }

    @RequestMapping(value = "/aname", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String ajaxUsername(String username) {
        Account account = services.queryUserByUsername(username);
        boolean flag = false;
        if (account != null) {
            flag = true;
        }
        return JSON.toJSONString(flag);

    }


    @RequestMapping(value = "/doadd", method = RequestMethod.POST)
    public String add(String username, String password, String phone,HttpSession session) {
        Integer n = services.addAccount(username, password, phone);
        if (n != 0 && n != null) {
            session.setAttribute("ulist",services.queryUserByUsername(username));
            return "/";
        } else {
            return "";
        }

    }
}
