package com.lti.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.dto.RenewInsuranceDTO;
import com.lti.entity.BuyInsuranceEntity;
import com.lti.entity.User;
import com.lti.service.RenewInsuranceService;

@Controller
@SessionAttributes({"user","renewDto"})
public class RenewInsuranceController {

	@Autowired
	private RenewInsuranceService renewservice;

	@RequestMapping(path = "/getUser", method = RequestMethod.POST)
	public String display(RenewInsuranceDTO renewDto, Map<String, Object> model) {
		model.put("renewDto", renewDto);
		User user = renewservice.fetch(renewDto,model);
		if (user != null) {
			model.put("policydetails", user);
			return "/renewDisplayUserDetails.jsp";
		} else {
			return "/renewGetUserDetails.jsp";
		}
	}

	@RequestMapping(path = "/karsinsurance", method = RequestMethod.POST)
     public String showDetailsOfInsurance(Map<String, Object> model)
     {
    	 RenewInsuranceDTO renewDto=(RenewInsuranceDTO)model.get("renewDto");
    	 BuyInsuranceEntity entity=renewservice.fetchDetails(renewDto);
    	 model.put("insurance", entity);
    	 return"/insuranceDetails.jsp";
    	 
    	 
     }
     
     
	@RequestMapping(path = "/payment", method = RequestMethod.POST)
	public String amount(Map<String, Object> model)
	{
		RenewInsuranceDTO renewDto=(RenewInsuranceDTO)model.get("renewDto");

		BuyInsuranceEntity entity=renewservice.fetchDetails(renewDto);
		model.put("pay",entity );
		return "/makePayment.jsp";
	}
	
	
	@RequestMapping(path = "/processUser", method = RequestMethod.POST)
	public String initDate(Map<String, Object> model) {
		RenewInsuranceDTO renewDto = (RenewInsuranceDTO) model.get("renewDto"); 
		renewservice.update(renewDto);
		return "/userConfirm.jsp";
	}

}
