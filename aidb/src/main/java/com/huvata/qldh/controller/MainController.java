package com.huvata.qldh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.huvata.qldh.conts.PageConst;

@Controller
@RequestMapping(value = PageConst.MAIN_PATH)
public class MainController {
	
	@RequestMapping(value = {"", "/"}, method = RequestMethod.GET)
	public String welcomePage(Model model) {
		return PageConst.MAIN_PAGE;
	}
	
}