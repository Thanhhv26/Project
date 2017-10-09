package com.system.hvt.entity;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;

@Getter(AccessLevel.PUBLIC)
@Setter(AccessLevel.PUBLIC)
public class UserEntity {
	private int userId;
	private int franchiseId;
	private String userFName;
	private String userLName;
	private String userEmail;
	private String userPsw;
	private String userConNo;
	private int userCityId;
	private String userAddress;
	private boolean userStatus;
}
