package cn.web.tl.service;


import cn.web.tl.entity.Account;

public interface UserShowServices {

    Account login(String username);//登录用户名查询

    Account loginByisDisable(String username);//查询账户是否封禁

}
