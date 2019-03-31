package com.lti.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.dto.UserLoginDTO;
import com.lti.entity.User;
import com.lti.service.UserLoginService;

@Controller
@SessionAttributes("user")
public class UserLoginController {

	@Autowired
	private UserLoginService userLoginService;

	@RequestMapping(path = "/userlogin", method = RequestMethod.POST)
	public String userLogin(UserLoginDTO userLoginDTO, Map<String,Object> model, HttpSession session) {
		User isEmpty = userLoginService.loginUser(userLoginDTO);
		
		if (isEmpty != null) {
			model.put("user", isEmpty);
			session.setAttribute("user", isEmpty);
			return "/mainregistrationpage.jsp";
		} else {
			model.put("error", "Login Failed! Enter Valid Credentials..!!");
			return "/userLogin.jsp";
		}
	}
}
