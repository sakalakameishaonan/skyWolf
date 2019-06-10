package cn.web.tl.service.impl;

import cn.web.tl.dao.UserDao;
import cn.web.tl.entity.Account;
import cn.web.tl.service.UserShowServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserShowServicesImpl implements UserShowServices {
    @Resource
    private UserDao dao;




    @Override
    public Account login(String username) {
        Account account=new Account();
        if (username!=null&&!"".equals(username)){
             account=dao.loginByaccount(username);
            if (account!=null){
                return account;
            }else {
                account=dao.loginByphone(username);
                return account;
            }
        }

        return null;
    }

    @Override
    public Account loginByisDisable(String username) {
        return null;
    }

    @Override
    public Integer addAccount(String username, String password, String phone) {
        Account account=new Account();
        account.setAccount(username);
        account.setPassword(password);
        account.setPhone(phone);
        return dao.addAccount(account);
    }

    @Override
    public Account queryUserByUsername(String account) {

        return dao.loginByaccount(account);
    }
}

