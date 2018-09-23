package com.huvata.qldh.service;

import java.util.List;

import com.huvata.qldh.model.UserProfile;


public interface UserProfileService {

	UserProfile findById(int id);

	UserProfile findByType(String type);
	
	List<UserProfile> findAll();
	
}
