package cn.web.tl.controller;

import cn.web.tl.service.shopInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/shop")
public class shopController {
    @Resource
    private shopInfoService sis;

    @RequestMapping("/openShop")
    public String openShop(){
        return "openShop";
    }

    @RequestMapping("/toOpenShop")
    public String toOpenShop(String shopname,String shopLevel,String idNum,String userId){
        int userId_int=Integer.parseInt(userId);
        int shopLevel_int=Integer.parseInt(shopLevel);
        int rs=sis.openNewShop(userId_int,shopLevel_int,shopname);




        return "index";
    }
}
