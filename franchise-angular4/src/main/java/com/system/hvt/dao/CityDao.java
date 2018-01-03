package com.system.hvt.dao;

import java.util.List;

import com.system.hvt.model.entity.CityEntity;

public interface CityDao {

	/**
	 * @return
	 */
	List<CityEntity> getAllCities() throws Exception;

	/**
	 * @param city
	 * @return
	 */
	void insert(CityEntity city) throws Exception;
	
	/**
	 * @param city
	 * @throws Exception
	 */
	void update(CityEntity city) throws Exception;
	
	/**
	 * @param city
	 * @throws Exception
	 */
	void delete(CityEntity city) throws Exception;
	
	/**
	 * @param city
	 * @return
	 * @throws Exception
	 */
	List<CityEntity> search(CityEntity city) throws Exception;
}
