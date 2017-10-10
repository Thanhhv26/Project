package com.system.hvt.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.system.hvt.common.constant.PageConst;

@Controller
//@RequestMapping(value = PageConst.LOGIN)
public class LoginController {
	
	@RequestMapping(value = {"", PageConst.LOGIN_PATH}, method = { RequestMethod.GET })
	public String getAllUser(Model model) {
		return PageConst.LOGIN_PAGE;
	}
	
	@RequestMapping(value = PageConst.HOME_PATH, method = RequestMethod.GET)
	public String welcomePage(Model model) {
		return PageConst.HOME_PAGE;
	}
	
	@RequestMapping(value = PageConst.Error403_PATH, method = RequestMethod.GET)
	public String accessDenied(Model model, Principal principal) {
		String message = "";
		if (principal != null) {
			message = "[ " + principal.getName() + " ]: You do not have permission to access this page!";
		} else {
			message = "You do not have permission to access this page!";
		}
		model.addAttribute("message", message);
		return PageConst.Error403_PAGE;
	}
	
}
