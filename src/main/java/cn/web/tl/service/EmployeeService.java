package cn.web.tl.service;

import cn.web.tl.entity.Employee;
import org.apache.ibatis.annotations.Param;

/**
 * @author dxq
 * @date 2019-05-31 - 10:07
 */
public interface EmployeeService {

    Employee login(String account, String pwd);


    int updateEmp(Employee employee);

    Employee getEmpById(Long id);
}
