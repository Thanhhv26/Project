package com.system.hvt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.system.hvt.common.constant.PageConst;

@Controller
@RequestMapping(value = PageConst.CATEGORY)
public class CategoryController {
	
	@RequestMapping(value = "", method = { RequestMethod.GET })
	public String index(Model model) {
		
		return PageConst.CATEGORY_INDEX;
	}
	
}
