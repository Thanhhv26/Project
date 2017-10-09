package com.system.hvt.dto;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;

@Getter(AccessLevel.PUBLIC)
@Setter(AccessLevel.PUBLIC)
public class CityDto {
	
	private int id;
	private String name;
	private String code;
	private boolean status;
	
}
