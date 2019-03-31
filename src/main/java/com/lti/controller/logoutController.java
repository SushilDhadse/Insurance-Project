package com.lti.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class logoutController {
	
	@RequestMapping(path="/logout" , method=RequestMethod.POST)
	public String logOut(HttpSession session) {
		session.invalidate();
		return "redirect:/index.jsp";
	}
	
}
