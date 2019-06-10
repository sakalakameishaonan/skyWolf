package cn.web.tl.controller;

import cn.web.tl.entity.ShopInfo;
import cn.web.tl.service.shopInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author FanWeichong
 * @date 2019-06-10 14:52
 */
@Controller
public class ShopInfoController {
    @Resource
    private shopInfoService service;

    @RequestMapping(value = "/")
    public String init(@RequestParam(value = "pageNo",defaultValue = "1")int pageNo,
                       @RequestParam(value = "pageSize",defaultValue = "10")int pageSize,
                       String title,
                       Model model){
        model.addAttribute("title",title);
        model.addAttribute("pageInfo",service.queryAllShopInfo(pageNo,pageSize,title));
        return "index";
    }
}
