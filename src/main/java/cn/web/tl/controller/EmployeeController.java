package cn.web.tl.controller;

import cn.web.tl.entity.Employee;
import cn.web.tl.service.EmployeeService;
import cn.web.tl.util.Constants;
import cn.web.tl.util.FileUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/sys")
public class EmployeeController {

    @Resource
    private EmployeeService service;

    private Logger logger = LoggerFactory.getLogger(EmployeeController.class);

    @RequestMapping(value = "/main")
    public String log(){
        return "/admin/main";
    }

    @RequestMapping(value = "/toCenter")
    public String toCenter(HttpSession session, Model model){
        Employee employee = (Employee) session.getAttribute(Constants.USER_SESSION);
        model.addAttribute("employee",employee);
        return "/admin/userCenter";
    }

    @PostMapping(value = "/doUpdateEmp")
    public String doUpdateEmp(Employee employee,HttpSession session, HttpServletRequest request,
                              @RequestParam(value = "headimg1", required = false)MultipartFile attach,
                                Model model){
        String newFile = FileUtil.fileUpload(request, attach);
        employee.setHeadimg(newFile);
        int i = service.updateEmp(employee);
        if (i == 1){
            session.setAttribute(Constants.USER_SESSION,service.getEmpById(employee.getEid()));
            model.addAttribute("msg","修改成功");
            return "/admin/userCenter";
        } else {
            model.addAttribute("msg","修改失败");
            return "/admin/userCenter";
        }
    }
}
