package com.lti.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.lti.component.UserLoginException;
import com.lti.dto.UserLoginDTO;
import com.lti.entity.User;

@Repository
public class UserLoginDao {

	@PersistenceContext
	private EntityManager entityManager;

	public User login(UserLoginDTO userLoginDTO) throws UserLoginException {

		Query query = entityManager
				.createQuery("select user from User as user where user.email = :email and user.password = :password");
		query.setParameter("email", userLoginDTO.getEmail());
		query.setParameter("password", userLoginDTO.getPassword());
		try {
			return (User) query.getSingleResult(); 
		} catch (NoResultException nre) {
			throw new UserLoginException("Problem in user credentials");
		}
	}

	
}
