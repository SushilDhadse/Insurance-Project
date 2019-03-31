package com.lti.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lti.dao.GenericDao;
import com.lti.dto.BikeDto;
import com.lti.entity.Bike;

@Service
public class BikeService {

	@Autowired
	private GenericDao genericDao;

	@Transactional
	public void addBike(BikeDto bikeDto) {

		Bike bike = new Bike();
		bike.setBikeName(bikeDto.getBikeName());
		bike.setBikePrice(bikeDto.getBikePrice());
		genericDao.add(bike);
	}
	
	public List<Bike> getAllBikes(){
		return genericDao.fetchAllBikes();
	}
}
