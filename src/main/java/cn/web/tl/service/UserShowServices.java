package cn.web.tl.service;


import cn.web.tl.entity.Account;

public interface UserShowServices {

    Account login(String username);//登录用户名查询

    Account loginByisDisable(String username);//查询账户是否封禁

    Integer addAccount(String username,String password,String phone);//注册

    Account queryUserByUsername(String account);//查重复

}
