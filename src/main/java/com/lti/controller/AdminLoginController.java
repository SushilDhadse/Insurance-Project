package com.lti.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.dto.AdminLoginDTO;
import com.lti.entity.AdminLoginEntity;

import com.lti.service.AdminLoginService;


@Controller
@SessionAttributes({"listOfUsers","admin"})
public class AdminLoginController {

	@Autowired
	private AdminLoginService adminLoginService;
	
	@RequestMapping(path = "/adminlogin", method = RequestMethod.POST)
	public String adminLogin(AdminLoginDTO adminLoginDTO, Map<String,Object> model) {   
		AdminLoginEntity isEmpty = adminLoginService.loginAdmin(adminLoginDTO);
		if (isEmpty!=null) {
			model.put("admin", isEmpty);
			return "/AdminDashboard.jsp";
		}
		else {
			model.put("error", "Login Failed! Enter Valid Credentials..!!");
			return "/adminLogin.jsp";  
		}
	}

}
