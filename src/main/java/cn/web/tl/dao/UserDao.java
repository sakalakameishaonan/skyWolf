package cn.web.tl.dao;

import cn.web.tl.entity.Account;
import cn.web.tl.entity.UserShow;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    Account loginByaccount(@Param("account") String account);

    Account loginByphone(@Param("phone") String phone);

    Integer addAccount(Account account);

    Account addByphone(String account);

    UserShow addUser(UserShow user);

}
