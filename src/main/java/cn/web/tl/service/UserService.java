package cn.web.tl.service;

import cn.web.tl.entity.User;

/**
 * @author dxq
 * @date 2019-05-31 - 10:07
 */
public interface UserService {

    User login(String account, String pwd);
}
