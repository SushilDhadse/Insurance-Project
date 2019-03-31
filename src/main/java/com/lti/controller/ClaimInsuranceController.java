package com.lti.controller;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.dto.ClaimInsuranceDTO;
import com.lti.entity.BuyInsuranceEntity;
import com.lti.entity.ClaimHistoryEntity;
import com.lti.entity.User;
import com.lti.service.ClaimInsuranceService;

@Controller
@SessionAttributes({ "user", "claim" })
public class ClaimInsuranceController {

	@Autowired
	private ClaimInsuranceService claimInsuranceService;

	@RequestMapping(path = "/claimInput", method=RequestMethod.POST)
	public String initClaim(ClaimInsuranceDTO claimInsuranceDTO, Map<String, Object> model, HttpSession session) {

		User user = (User) session.getAttribute("user");
		File targetDir = new File("d:/uploads/" + claimInsuranceDTO.getProfilePic().getOriginalFilename()); 
		try {
			claimInsuranceDTO.getProfilePic().transferTo(targetDir);
		}
		catch (IOException e) {
			e.printStackTrace(); //if copy fails, throw an exception instead
		}
		
		BuyInsuranceEntity buy = claimInsuranceService.passDetails(claimInsuranceDTO, user, model);

		if (buy != null) {
			model.put("claim", buy);
			return "/claimSuccess.jsp";
		} else
			return "/claimRejected.jsp";

	}
	
	@RequestMapping(path="/fetchDetails",method=RequestMethod.POST)
	public String initFetch(Map<String, Object> model,HttpSession session) {
		User user = (User) session.getAttribute("user");
		ClaimHistoryEntity entity=claimInsuranceService.fetchClaim(user);
		
			model.put("claimHistory", entity);
		return "/displayClaimDetails.jsp";
		
	}
}
