package com.system.hvt.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.system.hvt.common.constant.PageConst;

@Controller
@RequestMapping(value = PageConst.PRODUCT_PATH)
public class ProductController {
	
	@RequestMapping(value = "", method = { RequestMethod.GET })
	public String index(Model model) {
		
		return PageConst.PRODUCT_PAGE;
	}
	
	@RequestMapping(value = PageConst.PRODUCT_CREATE, method = { RequestMethod.POST })
	public @ResponseBody Object create(@RequestBody Object obj) throws Exception {
		
		return null;
	}
	
	@RequestMapping(value = PageConst.PRODUCT_UPDATE, method = { RequestMethod.POST })
	public @ResponseBody Object update(@RequestBody Object obj) throws Exception {
		
		return null;
	}
	
	@RequestMapping(value = PageConst.PRODUCT_DELETE, method = { RequestMethod.POST })
	public @ResponseBody Object delete(@RequestBody Object obj) throws Exception {
		
		return null;
	}
	
	@RequestMapping(value = PageConst.PRODUCT_DETAIL, method = { RequestMethod.POST })
	public @ResponseBody Object detail(@RequestBody Object obj) throws Exception {
		
		return null;
	}
	
	@RequestMapping(value = PageConst.PRODUCT_SEARCH, method = { RequestMethod.POST })
	public @ResponseBody List<Object> search(@RequestBody Object obj) throws Exception {		
		return null;
	}
	
	@RequestMapping(value = PageConst.PRODUCT_SEARCH_ALL, method = { RequestMethod.POST })
	public @ResponseBody List<Object> getAllObject() throws Exception {
		return null;
	}
	
}
