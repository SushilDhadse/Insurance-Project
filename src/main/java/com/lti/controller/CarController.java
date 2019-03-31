package com.lti.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lti.dto.CarDto;
import com.lti.entity.Car;
import com.lti.service.CarService;

@Controller
public class CarController {

	@Autowired
	private CarService carService;
	
	@RequestMapping(path="/carcontroller", method=RequestMethod.POST)
	public String add(CarDto carDto) {
		carService.addCar(carDto);
		return "/carconfirmation.jsp";
	}
	
	@RequestMapping(path="/carDisplayController", method=RequestMethod.POST)
	public String displayCars() {
		return "listController";
	}

	@RequestMapping(path="/listController", method=RequestMethod.POST)
	public String list(Map<String, Object> car) {
		List<Car> list = carService.getAllCars();
		car.put("listOfCars",list);
		return "/displayCars.jsp";
	}

}
