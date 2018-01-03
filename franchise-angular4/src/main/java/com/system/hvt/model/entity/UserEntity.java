package com.system.hvt.model.entity;

//@Getter(AccessLevel.PUBLIC)
//@Setter(AccessLevel.PUBLIC)
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
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getFranchiseId() {
		return franchiseId;
	}
	public void setFranchiseId(int franchiseId) {
		this.franchiseId = franchiseId;
	}
	public String getUserFName() {
		return userFName;
	}
	public void setUserFName(String userFName) {
		this.userFName = userFName;
	}
	public String getUserLName() {
		return userLName;
	}
	public void setUserLName(String userLName) {
		this.userLName = userLName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserPsw() {
		return userPsw;
	}
	public void setUserPsw(String userPsw) {
		this.userPsw = userPsw;
	}
	public String getUserConNo() {
		return userConNo;
	}
	public void setUserConNo(String userConNo) {
		this.userConNo = userConNo;
	}
	public int getUserCityId() {
		return userCityId;
	}
	public void setUserCityId(int userCityId) {
		this.userCityId = userCityId;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	public boolean isUserStatus() {
		return userStatus;
	}
	public void setUserStatus(boolean userStatus) {
		this.userStatus = userStatus;
	}
}
