package cn.web.tl.service.impl;

import cn.web.tl.dao.ShopDao;
import cn.web.tl.entity.ShopInfo;
import cn.web.tl.service.shopInfoService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author FanWeichong
 * @date 2019-06-10 14:43
 */
@Service
public class shopInfoServiceImpl implements shopInfoService {
    @Resource
    private ShopDao dao;

    @Override
    public PageInfo<ShopInfo> queryAllShopInfo(Integer page, Integer size, String title) {
        PageHelper.startPage(page,size);
        List<ShopInfo> list=dao.queryAllShopInfo(title);
        PageInfo<ShopInfo> pageInfo=new PageInfo<>(list);
        return pageInfo;
    }
}
