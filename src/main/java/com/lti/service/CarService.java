package com.lti.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lti.dao.GenericDao;
import com.lti.dto.CarDto;
import com.lti.entity.Car;

@Service
public class CarService {

	@Autowired
	private GenericDao genericDao;

	@Transactional
	public void addCar(CarDto carDto) {

		Car car = new Car();
		car.setCarName(carDto.getCarName());
		car.setCarPrice(carDto.getCarPrice());
		genericDao.add(car);
	}

	public List<Car> getAllCars() {
		return genericDao.fetchAllCars();
	}
}
