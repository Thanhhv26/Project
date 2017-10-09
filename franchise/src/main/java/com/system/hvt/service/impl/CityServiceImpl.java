package com.system.hvt.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.system.hvt.dao.CityDao;
import com.system.hvt.entity.CityEntity;
import com.system.hvt.service.CityService;

@Service
public class CityServiceImpl implements CityService {
	@Autowired
	CityDao dao;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.system.hvt.service.CityService#getAllCities()
	 */
	@Override
	public List<CityEntity> getAllCities() throws Exception {
		return dao.getAllCities();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.system.hvt.service.CityService#insert(com.system.hvt.entity.CityEntity)
	 */
	@Override
	public void insert(CityEntity city) throws Exception {
		dao.insert(city);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.system.hvt.service.CityService#update(com.system.hvt.entity.CityEntity)
	 */
	@Override
	public void update(CityEntity city) throws Exception {
		dao.update(city);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.system.hvt.service.CityService#delete(com.system.hvt.entity.CityEntity)
	 */
	@Override
	public void delete(CityEntity city) throws Exception {
		dao.delete(city);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.system.hvt.service.CityService#search(com.system.hvt.entity.CityEntity)
	 */
	@Override
	public List<CityEntity> search(CityEntity city) throws Exception {
		return dao.search(city);
	}

}
