package com.lti.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lti.dao.PolicyDao;
import com.lti.dto.InsuranceFourWheelerDto;
import com.lti.dto.InsuranceTwoWheelerDto;
import com.lti.entity.BuyInsuranceEntity;
import com.lti.entity.PolicyEntity;
import com.lti.entity.User;



@Service  
public class BuyInsuranceService {
	
	public String calculateDate() {
		Date date=new Date();
		String currentDate=new SimpleDateFormat("dd-MM-yyyy").format(date);
		return currentDate;
	}
	public String calculateExpiryDate(int year) {
        Calendar calendar = Calendar.getInstance();
        Date now = calendar.getTime();
        calendar.add(Calendar.YEAR,year);
        Date YearFromNow = calendar.getTime();
        String currentDate=new SimpleDateFormat("dd-MM-yyyy").format(YearFromNow);
      return currentDate;
	}
	
	@Autowired
	private PolicyDao policyDao;
	
	public List<PolicyEntity> getPolicy(){
		List<PolicyEntity> policies=policyDao.fetchAll();
		return policies;
	}
	
	@Transactional
	public void addInsurance(InsuranceFourWheelerDto dto,User user) {
		BuyInsuranceEntity confirmInsuranceEnity =new BuyInsuranceEntity();
		confirmInsuranceEnity.setUser(user);
		confirmInsuranceEnity.setType(dto.getType());
		confirmInsuranceEnity.setManufacturer(dto.getManufacturer());
		confirmInsuranceEnity.setModel(dto.getModel());
		confirmInsuranceEnity.setDrivingLicence(dto.getDrivingLicence());
		confirmInsuranceEnity.setAge(dto.getAge());
		confirmInsuranceEnity.setRegisterationNo(dto.getRegisterationNo());
		confirmInsuranceEnity.setEngineNo(dto.getEngineNo());
		confirmInsuranceEnity.setYears(dto.getYears());
		confirmInsuranceEnity.setEstimate(dto.getEstimate()*dto.getYears()*12);
		confirmInsuranceEnity.setChassisNo(dto.getChassisNo());
		String startDate=calculateDate();
		String endDate=calculateExpiryDate(dto.getYears());
		confirmInsuranceEnity.setStartDate(calculateDate());
		confirmInsuranceEnity.setEndDate(calculateExpiryDate(dto.getYears()));
		
/*		PolicyEntity p=new PolicyEntity();
		p.setPolicyid(dto.getPolicyNo());
		confirmInsuranceEnity.setPolicy(p);*/
		confirmInsuranceEnity.setPolicy(dto.getPolicyNo());
		policyDao.add(confirmInsuranceEnity);
	}
	
	
	@Transactional
	public void addInsurance(InsuranceTwoWheelerDto dto,User user) {   //BIKE
		BuyInsuranceEntity confirmInsuranceEnity =new BuyInsuranceEntity();
		confirmInsuranceEnity.setUser(user);
		confirmInsuranceEnity.setType(dto.getType());
		confirmInsuranceEnity.setManufacturer(dto.getManufacturer());
		confirmInsuranceEnity.setModel(dto.getModel());
		confirmInsuranceEnity.setDrivingLicence(dto.getDrivingLicence());
		confirmInsuranceEnity.setAge(dto.getAge());
		confirmInsuranceEnity.setRegisterationNo(dto.getRegisterationNo());
		confirmInsuranceEnity.setEngineNo(dto.getEngineNo());
		confirmInsuranceEnity.setYears(dto.getYears());
		confirmInsuranceEnity.setEstimate(dto.getEstimate()*dto.getYears()*12);
		confirmInsuranceEnity.setChassisNo(dto.getChassisNo());
		String startDate=calculateDate();
		String endDate=calculateExpiryDate(dto.getYears());
		confirmInsuranceEnity.setStartDate(calculateDate());
		confirmInsuranceEnity.setEndDate(calculateExpiryDate(dto.getYears()));

		confirmInsuranceEnity.setPolicy(dto.getPolicyNo());
		policyDao.add(confirmInsuranceEnity);
	}
	
	public double CalculateEstimation(InsuranceFourWheelerDto dto) {
		Map< String,Integer> hm = new HashMap< String,Integer>(); 
		hm.put("scorpio", new Integer(1000000)); 
		hm.put("bolero", new Integer(912000)); 
		hm.put("xuv500", new Integer(1272000)); 
		hm.put("xylo", new Integer(900000)); 
		hm.put("civic", new Integer(170000)); 
		hm.put("accord", new Integer(430000)); 
		hm.put("city", new Integer(140000)); 
		hm.put("amaze", new Integer(700000)); 
		hm.put("nano", new Integer(120000)); 
		hm.put("tiago", new Integer(470000)); 
		hm.put("nexon", new Integer(820000)); 
		hm.put("tigor", new Integer(632000)); 
		Set< Map.Entry< String,Integer> > st = hm.entrySet();
		double price=0;
		int depreciationpercent=0;
		double IDV;
		double BasicRateOfVehicle;
		for (Map.Entry< String,Integer> me:st) 
	       { 
	          if(dto.getModel()==me.getKey()) {
	        	price=me.getValue();  
	          }
	       }
		
		switch(dto.getAge())
		{
		case 0:depreciationpercent=5;
					   break;
		case 1:depreciationpercent=10;
						break;
		case 2:depreciationpercent=20;
						break;
		case 3:depreciationpercent=30;
						break;
		default:						
		}
		
		IDV=price*depreciationpercent/100;
		
		////////////////////////////////////////////////OWN DAMAGE PREMIUM ///////////////////////////////////////////////////
		
		 final double VehicleBasicRate =3.127;
		 BasicRateOfVehicle=IDV*VehicleBasicRate/100;
		 
		 ////////////////////////////////////////////////////  LIABILITY PREMIUM  /////////////////////////////////////////////////////
		 final double LiabilityPremium =1900;
		 
		 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		 double premium=BasicRateOfVehicle + LiabilityPremium;
		 
		 premium+=(premium*18/100);//GST
		/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
		return premium;
	}
	
	//BIKE
	public double CalculateEstimationBike(InsuranceTwoWheelerDto dto) {
		Map< String,Integer> hm = new HashMap< String,Integer>(); 
		hm.put("pulsur ns200", new Integer(100000)); 
		hm.put("pulsur rs200", new Integer(127000)); 
		hm.put("pulsur dominar", new Integer(163000)); 
		hm.put("avenger cruise", new Integer(96900)); 
		hm.put("xtreme 200r", new Integer(89900)); 
		hm.put("maestro edge", new Integer(50900)); 
		hm.put("splender plus", new Integer(48000)); 
		hm.put("buke 200", new Integer(152000)); 
		hm.put("rc 200", new Integer(179000)); 
		hm.put("adventure 390", new Integer(300000)); 

		Set< Map.Entry< String,Integer> > st = hm.entrySet();
		double price=0;
		int depreciationpercent=0;
		double IDV;
		double BasicRateOfVehicle;
		
		for (Map.Entry< String,Integer> me:st) 
	       { 
	          if(dto.getModel()==me.getKey()) {
	        	price=me.getValue();  
	          }
	       }
		
		switch(dto.getAge())
		{
		case 0:depreciationpercent=5;
					   break;
		case 1:depreciationpercent=10;
						break;
		case 2:depreciationpercent=20;
						break;
		case 3:depreciationpercent=30;
						break;
		default:						
		}
		
		IDV=price*depreciationpercent/100;
		
		////////////////////////////////////////////////OWN DAMAGE PREMIUM ///////////////////////////////////////////////////
		
		 final double VehicleBasicRate =1.708;
		 BasicRateOfVehicle=IDV*VehicleBasicRate/100;
		 
		 ////////////////////////////////////////////////////  LIABILITY PREMIUM  /////////////////////////////////////////////////////
		 final double LiabilityPremium =427;
		 
		 /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		 double premium=BasicRateOfVehicle + LiabilityPremium;
		 
		 premium+=(premium*18/100);   //GST
		/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
		return premium;
	}

	
	
}
