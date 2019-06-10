package cn.web.tl.service.impl;

import cn.web.tl.dao.EmployeeMapper;
import cn.web.tl.entity.Employee;
import cn.web.tl.service.EmployeeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @author dxq
 * @date 2019-05-31 - 10:07
 */
@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Resource
    private EmployeeMapper mapper;

    @Override
    public Employee login(String account, String pwd) {
        return mapper.login(account,pwd);
    }

    @Override
    public int updateEmp(Employee employee) {
        return mapper.updateEmp(employee);
    }

    @Override
    public Employee getEmpById(Long id) {
        return mapper.getEmpById(id);
    }
}
