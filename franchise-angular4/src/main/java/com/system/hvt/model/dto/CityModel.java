package com.system.hvt.model.dto;

//@Getter(AccessLevel.PUBLIC)
//@Setter(AccessLevel.PUBLIC)
public class CityModel {
	
	private int id;
	private String name;
	private String code;
	private boolean status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	
}
