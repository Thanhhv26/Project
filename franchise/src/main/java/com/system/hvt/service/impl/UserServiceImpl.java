package com.system.hvt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.system.hvt.dao.UserDao;
import com.system.hvt.entity.UserEntity;
import com.system.hvt.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao dao;

	@Override
	public List<UserEntity> getAllUser() {
		return dao.getAllUser();
	}

}
