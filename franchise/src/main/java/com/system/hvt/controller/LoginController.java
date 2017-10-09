package com.system.hvt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.system.hvt.common.constant.PageConst;

@Controller
//@RequestMapping(value = PageConst.LOGIN)
public class LoginController {
	
	@RequestMapping(value = {"", "/login"}, method = { RequestMethod.GET })
	public String getAllUser(Model model) {
		return PageConst.LOGIN_INDEX;
	}
	
	@RequestMapping(value = {PageConst.MAIN}, method = RequestMethod.GET)
	public String welcomePage(Model model) {
		return PageConst.MAIN_INDEX;
	}
	
}
