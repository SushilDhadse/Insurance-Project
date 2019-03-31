package com.lti.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.lti.dto.ForgotPasswordDTO;
import com.lti.entity.User;
import com.lti.service.ForgotPasswordService;

@Controller
@SessionAttributes("forgot")
public class ForgotPasswordController {

	@Autowired
	private ForgotPasswordService forgotPasswordService;

	@RequestMapping(path = "/getquestion", method = RequestMethod.POST)
	public String initForm(ForgotPasswordDTO forgotPasswordDTO, Map<String, Object> model) {

		User isEmpty = forgotPasswordService.checkEmail(forgotPasswordDTO);
		if (isEmpty == null) {
			// question=isEmpty.getSecurityQuestion();
			return "/userNotExist.jsp";
		}
		else
			model.put("forgot", isEmpty);
		return "/askanswer.jsp";

	}

	@RequestMapping(path = "/getanswer", method = RequestMethod.POST)
	public String processAnswer(ForgotPasswordDTO forgotPasswordDTO, Model model) {

		boolean isValid = forgotPasswordService.checkAnswer(forgotPasswordDTO);
		if (isValid)
			return "/reset.jsp";
		else
			//model.addAttribute("add", question);
		model.addAttribute("error", "Incorrect Answer...!!");
		return "/askanswer.jsp";

	}

	/*@RequestMapping(path = "/getanswer", method = RequestMethod.POST)
	public String processAnswer(Model model,@ModelAttribute("forgot") ForgotPasswordEntity forgotPasswordEntity ) {
		forgotPasswordEntity.getSecurityQuestion();
		
		return null;
		
	}*/
	
	@RequestMapping(path = "/update", method = RequestMethod.POST)
	public String resetProcess(ForgotPasswordDTO forgotPasswordDTO,@ModelAttribute("forgot") User forgotPasswordEntity ) {

		forgotPasswordService.resetPassword(forgotPasswordDTO,forgotPasswordEntity);
		return "/gotologin.jsp";
	}

}
