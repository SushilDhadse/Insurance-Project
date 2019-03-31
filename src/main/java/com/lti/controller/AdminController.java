package com.lti.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.dto.PolicyDto;
import com.lti.entity.AdminLoginEntity;
import com.lti.entity.ClaimHistoryEntity;
import com.lti.entity.PolicyEntity;
import com.lti.entity.User;
import com.lti.service.AdminService;

@Controller
@SessionAttributes({"listOfUsers","listOfPolicy","admin"})
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(path="/admincontroller",method=RequestMethod.GET)
public String ViewUsers(Map<String, Object> model,HttpSession session) {
	return  "showusercontroller";
}
	
	@RequestMapping(path="/showusercontroller",method=RequestMethod.GET)
public String ShowUsers(Map<String, Object> model,HttpSession session) {
	List<User> list=adminService.getUsers();
	List<PolicyEntity>policyList=adminService.getPolicy();
	model.put("listOfUsers", list);
	model.put("listOfPolicy", policyList);
	return  "/AdminDashboard.jsp";
}

	@RequestMapping(path="/addPolicy",method=RequestMethod.POST)
	public String AddPolicy(PolicyDto dto,Map<String,Object> model) {
		adminService.addPolicy(dto);
		return "/AdminDashboard.jsp";
	}
	
	@RequestMapping(path="/fetchClaims", method=RequestMethod.GET)
	public String fetchPendingApplications(Map<String, Object> model, HttpSession session) {
	
		AdminLoginEntity admin = (AdminLoginEntity) session.getAttribute("admin");
		if(admin != null) {
			List<ClaimHistoryEntity> claims = adminService.getClaim();
			
			model.put("listOfClaims", claims);
			return "/adminViewClaims.jsp";
		}
		else 
			return "redirect:/adminLogin.jsp";
	}
	
	/*@RequestMapping(path="/viewSingleClaim", method=RequestMethod.GET)
	public String viewSingleApplication(Map<String, Object> model, @RequestParam("applicationNo") int applicationNumber, HttpServletRequest request) {
		
		ClaimHistoryEntity application = adminService.fetchSingleApplication(claimNo);
		FileUploadEntity documents = adminService.fetchDocuments(application);
				
		String appRoot = request.getServletContext().getRealPath("/");*/
/*
	public String ViewUsers() {
	List<User> list=adminService.getUsers();
	for(User lists:list)
	{
		System.out.println(lists.getEmail() +" " +lists.getAddress()  +" " +lists.getContact());
	}
	
	return "/somePage.jsp";
}*/
}
