package cn.web.tl.service.impl;

import cn.web.tl.dao.CustomerMapper;
import cn.web.tl.entity.UserShow;
import cn.web.tl.service.CustomerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author dxq
 * @date 2019-06-10 - 21:31
 */
@Service
public class CustomerServiceImpl implements CustomerService {

    @Resource
    private CustomerMapper mapper;

    @Override
    public UserShow detailUser(Long id) {
        return mapper.detailUser(id);
    }
}
