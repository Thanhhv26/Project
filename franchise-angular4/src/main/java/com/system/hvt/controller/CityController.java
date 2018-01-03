package com.system.hvt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.system.hvt.common.constant.PageConst;
import com.system.hvt.model.entity.CityEntity;
import com.system.hvt.service.CityService;

@Controller
@RequestMapping(value = PageConst.CITY_PATH)
public class CityController {
	
	@Autowired
	CityService service;
	
	@RequestMapping(value = "", method = { RequestMethod.GET })
	public String index(Model model) throws Exception {
		List<CityEntity> cities = service.getAllCities();
		model.addAttribute("cities", cities);
		return PageConst.CITY_PAGE;
	}
	
	@RequestMapping(value = PageConst.CITY_CREATE, method = { RequestMethod.POST })
	public @ResponseBody CityEntity create(@RequestBody CityEntity city) throws Exception {
		service.insert(city);
		return city;
	}
	
	@RequestMapping(value = PageConst.CITY_UPDATE, method = { RequestMethod.POST })
	public @ResponseBody CityEntity update(@RequestBody CityEntity city) throws Exception {
		service.update(city);
		return city;
	}
	
	@RequestMapping(value = PageConst.CITY_DELETE, method = { RequestMethod.POST })
	public @ResponseBody CityEntity delete(@RequestBody CityEntity city) throws Exception {
		service.delete(city);
		return city;
	}
	
	@RequestMapping(value = PageConst.CITY_DETAIL, method = { RequestMethod.POST })
	public @ResponseBody CityEntity detail(@RequestBody CityEntity city) throws Exception {
		service.delete(city);
		return city;
	}
	
	@RequestMapping(value = PageConst.CITY_SEARCH, method = { RequestMethod.POST })
	public @ResponseBody List<CityEntity> search(@RequestBody CityEntity city) throws Exception {		
		return service.search(city);
	}
	
	@RequestMapping(value = PageConst.CITY_SEARCH_ALL, method = { RequestMethod.POST })
	public @ResponseBody List<CityEntity> getAllCities() throws Exception {
		return service.getAllCities();
	}
	
}
