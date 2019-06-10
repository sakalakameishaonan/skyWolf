package cn.web.tl.service;

import cn.web.tl.entity.Order;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * @author dxq
 * @date 2019-05-29 - 17:41
 */
public interface OrderService {

    PageInfo<Order> getOrderBycondition(Integer pageNow,Integer pageSize,Long id, Long userId, Long shopId, Date sdate, Date edate);

    Order queryDetails(Long id);
}
