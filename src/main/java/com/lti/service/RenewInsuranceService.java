package com.lti.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.lti.dao.RenewInsuranceDao;
import com.lti.dto.RenewInsuranceDTO;
import com.lti.entity.BuyInsuranceEntity;
import com.lti.entity.User;

@Component("renewService")
@Service
public class RenewInsuranceService {

	@Autowired
	private RenewInsuranceDao dao;

	public User fetch(RenewInsuranceDTO rdto,Map<String, Object> model) {

		User user = dao.fetchDetailsOfPolicy(rdto);
		if (user.getEmail().equals(rdto.getEmail()) && user.getContact() == rdto.getMobileNo()) {
			return user;
		} else {
			model.put("error", "You are not existing user!!");
			return null;
		}

	}
	

    public BuyInsuranceEntity fetchDetails(RenewInsuranceDTO dto)
    {
    	return dao.fetchDetailsOfInsurance(dto);
    }
	
	
public void update(RenewInsuranceDTO dto)
{
	String startDate=startDate();
	String expiryDate=expiryDate();
	System.out.println(startDate + " " + expiryDate  + " " + dto.getInsuranceId());
	dao.updateDetailsOfPolicy(dto, startDate, expiryDate);
}

	// to calculate the start date of renew insurance
	public String startDate() {
		Date date = new Date();
		String currentDate = new SimpleDateFormat("dd-MM-yyyy").format(date);
		System.out.println(currentDate);
		return currentDate;
		//dao.updateDetailsOfPolicy(currentDate);
	}

	// to calculate the expiry date of renew insurance
	public String expiryDate() {

		Calendar calender = Calendar.getInstance();
		Date now = calender.getTime();
		calender.add(Calendar.YEAR, 1);
		Date YearFromNow = calender.getTime();
		String expiryDate = new SimpleDateFormat("dd-MM-yyyy").format(YearFromNow);
		return expiryDate;
		
	}

}
