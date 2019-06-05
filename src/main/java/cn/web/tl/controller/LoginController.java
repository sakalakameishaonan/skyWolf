package cn.web.tl.controller;

import cn.web.tl.entity.Employee;
import cn.web.tl.service.EmployeeService;
import cn.web.tl.util.Constants;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

	@RequestMapping("/login")
	public String login(){
		return "login";
	}

	@RequestMapping("/")
	public String index(){
		return "index";
	}

	private Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Resource
	private EmployeeService service;

	@RequestMapping(value = "/doLogin",method = RequestMethod.POST)
	public String doLogin(@RequestParam("account") String account, @RequestParam("password") String pwd, HttpSession session){
		logger.info("================================>>>>>>>>>>>>>>>>>进入登录方法");
		Employee employee = service.login(account, pwd);
		logger.info(employee.getEname()+"登录");
		if (employee != null){
			session.setAttribute(Constants.USER_SESSION, employee);
			return "admin/admin";
		} else {
			return "login";
		}
	}

}
