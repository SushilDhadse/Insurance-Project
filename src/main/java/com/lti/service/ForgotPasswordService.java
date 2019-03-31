package com.lti.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.lti.component.UserLoginException;
import com.lti.dao.ForgotPasswordDao;
import com.lti.dto.ForgotPasswordDTO;
import com.lti.entity.User;

@Component
public class ForgotPasswordService {

	@Autowired
	private ForgotPasswordDao forgotPasswordDao;

	public User checkEmail(ForgotPasswordDTO forgotPasswordDTO) {

		//return forgotPasswordDao.fetchQuestion(forgotPasswordDTO);
		try {
			User remail = forgotPasswordDao.fetchQuestion(forgotPasswordDTO);
			return remail;
		} catch (UserLoginException e) {
			return null;
		}
		
	}

	public boolean checkAnswer(ForgotPasswordDTO forgotPasswordDTO) {
		try {
			User ans = forgotPasswordDao.validateAnswer(forgotPasswordDTO);
			return true;
		} catch (UserLoginException e) {
			return false;
		}

	}

	public void resetPassword(ForgotPasswordDTO forgotPasswordDTO,@ModelAttribute("forgot") User forgotPasswordEntity) {

		forgotPasswordDao.updateProcess(forgotPasswordDTO, forgotPasswordEntity);

	}

}
