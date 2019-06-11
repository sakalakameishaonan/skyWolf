package cn.web.tl.dao;

import cn.web.tl.entity.ShopInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author FanWeichong
 * @date 2019-06-10 14:37
 */
public interface ShopDao {
    List<ShopInfo> queryAllShopInfo(@Param("title")String title);
    int addNewShop(int userId,int shopLevel,String shopname);
}
