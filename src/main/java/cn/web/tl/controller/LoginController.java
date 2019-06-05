package cn.web.tl.controller;

import cn.web.tl.service.UserService;
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
	private UserService service;


}
