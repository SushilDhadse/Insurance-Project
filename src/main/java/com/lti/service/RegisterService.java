package com.lti.service;

import javax.persistence.NonUniqueResultException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lti.component.UserRegisterException;
import com.lti.dao.GenericDao;
import com.lti.dto.RegisterDto;
import com.lti.entity.User;

@Service
public class RegisterService {

	@Autowired
	private GenericDao genericDao;

	@Transactional
	public void register(RegisterDto userdto) {

		User user = new User();
		user.setEmail(userdto.getEmail());
		user.setFirstName(userdto.getFirstName());
		user.setLastName(userdto.getLastName());
		user.setDob(userdto.getDob());
		user.setGender(userdto.getGender());
		user.setContact(userdto.getContact());
		user.setAddress(userdto.getAddress());
		user.setPassword(userdto.getPassword());
		user.setSecurityQuestion(userdto.getSecurityQuestion());
		user.setSecurityAnswer(userdto.getSecurityAnswer());
		try {
			genericDao.add(user);
		} catch (UserRegisterException e) {

		}
	}
}
