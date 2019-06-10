package cn.web.tl.dao;

import cn.web.tl.entity.Employee;
import org.apache.ibatis.annotations.Param;

/**
 * @author dxq
 * @date 2019-05-31 - 10:04
 */
public interface EmployeeMapper {
    Employee login(@Param("account") String account, @Param("pwd") String pwd);

    int updateEmp(Employee employee);

    Employee getEmpById(@Param("id")Long id);
}
