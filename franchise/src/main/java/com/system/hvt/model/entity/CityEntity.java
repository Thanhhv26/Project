package com.system.hvt.model.entity;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;

@Getter(AccessLevel.PUBLIC)
@Setter(AccessLevel.PUBLIC)
public class CityEntity {
	
	private int id;
	private String name;
	private String code;
	private boolean status;
	
}
