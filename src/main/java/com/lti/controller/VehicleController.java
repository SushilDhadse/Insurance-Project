package com.lti.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.dto.BikeDto;
import com.lti.dto.CarDto;
import com.lti.entity.Bike;
import com.lti.entity.Car;
import com.lti.service.BikeService;
import com.lti.service.CarService;

@Controller
public class VehicleController {

	@Autowired
	private CarService carService;
	
	@Autowired
	private BikeService bikeService;

	@RequestMapping(path = "/carController", method = RequestMethod.POST)
	public String addCar(CarDto carDto) {
		carService.addCar(carDto);
		return "/confirmationCar.jsp";
	}

	@RequestMapping(path = "/displayCarController", method = RequestMethod.POST)
	public String displayCars() {
		return "listCarController";
	}

	@RequestMapping(path = "/listCarController", method = RequestMethod.POST)
	public String listCar(Map<String, Object> car) {
		List<Car> listCar = carService.getAllCars();
		car.put("listOfCars", listCar);
		return "/displayCars.jsp";
	}

	@RequestMapping(path = "/bikeController", method = RequestMethod.POST)
	public String addBike(BikeDto bikeDto) {
		bikeService.addBike(bikeDto);
		return "/confirmationBike.jsp";
	}

	@RequestMapping(path = "/displayBikeController", method = RequestMethod.POST)
	public String displayBike() {
		return "listBikeController";
	}

	@RequestMapping(path = "/listBikeController", method = RequestMethod.POST)
	public String listBike(Map<String, Object> bike) {
		List<Bike> listBike = bikeService.getAllBikes();
		bike.put("listOfBikes", listBike);
		return "/displayBike.jsp";
	}

}
