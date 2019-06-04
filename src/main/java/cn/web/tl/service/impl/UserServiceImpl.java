package cn.web.tl.service.impl;

import cn.web.tl.dao.UserMapper;
import cn.web.tl.entity.User;
import cn.web.tl.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author dxq
 * @date 2019-05-31 - 10:07
 */
@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper mapper;

    @Override
    public User login(String account, String pwd) {
        return mapper.login(account,pwd);
    }
}
