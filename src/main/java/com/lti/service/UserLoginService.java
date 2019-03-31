package com.lti.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.lti.component.UserLoginException;
import com.lti.dao.UserLoginDao;
import com.lti.dto.UserLoginDTO;
import com.lti.entity.User;

@Component
public class UserLoginService {

	@Autowired
	private UserLoginDao userLoginDao;

	public User loginUser(UserLoginDTO userLoginDTO) {
		try {
			User loginDetails = userLoginDao.login(userLoginDTO);
			return loginDetails;
		}catch (UserLoginException nre) {
			return null;
		}
	}
}
