package com.lti.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.lti.component.UserLoginException;
import com.lti.dto.AdminLoginDTO;
import com.lti.entity.AdminLoginEntity;

@Repository
public class AdminLoginDao {

	@PersistenceContext
	private EntityManager entityManager;
	
	public AdminLoginEntity loginAd(AdminLoginDTO adminLoginDTO) throws UserLoginException {
		Query query = entityManager
				.createQuery("select admin from AdminLoginEntity as admin where admin.userName = :username and admin.password = :password");
		query.setParameter("username", adminLoginDTO.getUserName());
		query.setParameter("password", adminLoginDTO.getPassword());
		try {
			return (AdminLoginEntity) query.getSingleResult(); 
		} catch (NoResultException nre) {
			throw new UserLoginException("Problem in Admin credentials");
		}
	
	}
}
