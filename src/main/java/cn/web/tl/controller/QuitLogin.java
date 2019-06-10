package cn.web.tl.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping(value = "/quit")
public class QuitLogin {

    @RequestMapping(value = "exit", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String quit(HttpSession session){
        session.invalidate();
        String msg="成功退出登录！";
        return JSON.toJSONString(msg);

    }
}
