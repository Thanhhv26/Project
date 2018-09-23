package com.huvata.qldh.dao;

import java.util.List;

import com.huvata.qldh.model.UserProfile;


public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
