package cn.web.tl.dao;

import cn.web.tl.entity.Order;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

/**
 * @author dxq
 * @date 2019-05-29 - 17:38
 */
public interface OrderMapper {

    List<Order> getOrderBycondition(@Param("id") Long id, @Param("userId") Long userId,
                                    @Param("shopId") Long shopId, @Param("sdate") Date sdate,
                                    @Param("edate") Date edate);


    Order queryDetails(@Param("id") Long id);
}
