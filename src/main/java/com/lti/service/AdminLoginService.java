package com.lti.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.lti.component.UserLoginException;
import com.lti.dao.AdminLoginDao;
import com.lti.dto.AdminLoginDTO;
import com.lti.entity.AdminLoginEntity;


@Component
public class AdminLoginService {

	@Autowired
	private AdminLoginDao adminLoginDao;
	
	public AdminLoginEntity loginAdmin(AdminLoginDTO adminLoginDTO) {
		try {
			AdminLoginEntity logindetails = adminLoginDao.loginAd(adminLoginDTO);
			return logindetails;
		}catch (UserLoginException nre) {
			return null;
		}
	}
}
