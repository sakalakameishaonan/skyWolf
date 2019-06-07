package cn.web.tl.service.impl;

import cn.web.tl.dao.OrderMapper;
import cn.web.tl.entity.Order;
import cn.web.tl.service.OrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
    public PageInfo<Order> getOrderBycondition(Integer pageNow, Integer pageSize, Long id, Long userId, Long shopId, Date sdate, Date edate) {
        PageHelper.startPage(pageNow,pageSize);
        List<Order> list = mapper.getOrderBycondition(id,userId,shopId, sdate, edate);
        PageInfo<Order> pageInfo = new PageInfo<>(list);
        return pageInfo;
    }
}
