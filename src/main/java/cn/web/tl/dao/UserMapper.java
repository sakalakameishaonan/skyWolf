package cn.web.tl.dao;

import org.apache.ibatis.annotations.Param;

/**
 * @author dxq
 * @date 2019-05-31 - 10:04
 */
public interface UserMapper {
    User login(@Param("account") String account, @Param("pwd") String pwd);
}
