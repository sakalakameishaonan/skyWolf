package cn.web.tl.controller;

import cn.web.tl.service.OrderService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @author dxq
 * @date 2019-05-29 - 17:52
 */
@Controller
@RequestMapping("/sys")
public class OrderController {

    @Resource
    private OrderService service;

    @RequestMapping("/toOrder")
    public String toOrder(){
        return "admin/orderList";
    }
}
