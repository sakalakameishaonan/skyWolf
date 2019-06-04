package cn.web.tl.service;

import cn.web.tl.entity.Order;

import java.util.Date;
import java.util.List;

/**
 * @author dxq
 * @date 2019-05-29 - 17:41
 */
public interface OrderService {

    List<Order> getOrderBycondition(Long id, Long userId, Long shopId, Date sdate, Date edate, Integer pageNum, Integer pageSize);

    Integer getOrderCount(Long id, Long userId, Long shopId, Date sdate, Date edate);
}
