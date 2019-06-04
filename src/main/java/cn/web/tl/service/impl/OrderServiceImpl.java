package cn.web.tl.service.impl;

import cn.web.tl.dao.OrderMapper;
import cn.web.tl.entity.Order;
import cn.web.tl.service.OrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * @author dxq
 * @date 2019-05-29 - 17:42
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Resource
    private OrderMapper mapper;


    @Override
    public List<Order> getOrderBycondition(Long id, Long userId, Long shopId, Date sdate, Date edate, Integer pageNum, Integer pageSize) {
        return mapper.getOrderBycondition(id, userId, shopId, sdate, edate, pageNum, pageSize);
    }

    @Override
    public Integer getOrderCount(Long id, Long userId, Long shopId, Date sdate, Date edate) {
        return mapper.getOrderCount(id,userId,shopId,sdate,edate);
    }
}
