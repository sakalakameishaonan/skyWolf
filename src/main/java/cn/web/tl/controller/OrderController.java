package cn.web.tl.controller;

import cn.web.tl.entity.Order;
import cn.web.tl.service.OrderService;
import cn.web.tl.util.Constants;
import cn.web.tl.util.DateUtil;
import com.github.pagehelper.PageInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

/**
 * @author dxq
 * @date 2019-05-29 - 17:52
 */
@Controller
@RequestMapping("/sys")
public class OrderController {

    private Logger logger = LoggerFactory.getLogger(OrderController.class);

    @Resource
    private OrderService service;


    @RequestMapping(value = "/toOrder")
    public String queryOrder(@RequestParam(value = "id",required = false)Long id, @RequestParam(value = "userId",required = false)Long userId,
                             @RequestParam(value = "shopId",required = false)Long shopId, @RequestParam(value = "sdate",required = false)String sdate,
                             @RequestParam(value = "edate",required = false) String edate, @RequestParam(value = "pageNow",defaultValue = "1")Integer pageNow,
                             @RequestParam(value = "go",required = false)String go, Model model){
        logger.info("=====================>>>>>>>>>>>>>>>>>>>>查询订单");
        PageInfo<Order> pageInfo = service.getOrderBycondition(pageNow,
                Constants.pageSize, id, userId, shopId,
                DateUtil.getDate(sdate,DateUtil.DATAFORMAT_STR),
                DateUtil.getDate(edate,DateUtil.DATAFORMAT_STR));

        logger.info("=============>>>>>>>>>>>>>>>>"+pageInfo.getList()+pageInfo.getPages());

        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("id",id);
        model.addAttribute("userId",userId);
        model.addAttribute("shopId", shopId);
        model.addAttribute("sdate", sdate);
        model.addAttribute("edate", edate);
        model.addAttribute("go", go);
        return "admin/orderList";
    }

    @RequestMapping(value = "/doQueryDetails")
    public String doQueryDetails(@RequestParam("id")Long id,Model model){
        Order order = service.queryDetails(id);
        logger.info("========================>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+order.getId()+"\t"+order);
        model.addAttribute("order",order);
        return "/admin/orderDetail";
    }

}
