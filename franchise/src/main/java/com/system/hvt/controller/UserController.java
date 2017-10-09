package com.system.hvt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.system.hvt.entity.UserEntity;
import com.system.hvt.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService service;
	
	@RequestMapping(value = "/getAllUser", method = { RequestMethod.POST })
	public String getAllUser(Model model) {
		List<UserEntity> users = service.getAllUser();
		for(UserEntity user : users){
			System.out.println("UserId: " + user.getUserId());
		}
		model.addAttribute("users", users);
		return "loginPage";
	}
}
