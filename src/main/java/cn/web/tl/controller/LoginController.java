package cn.web.tl.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

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
