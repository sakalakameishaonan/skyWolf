package cn.web.tl.service;

import cn.web.tl.entity.ShopInfo;
import com.github.pagehelper.PageInfo;


/**
 * @author FanWeichong
 * @date 2019-06-10 14:43
 */
public interface shopInfoService {
    PageInfo<ShopInfo> queryAllShopInfo(Integer page,Integer size,String title);
}
