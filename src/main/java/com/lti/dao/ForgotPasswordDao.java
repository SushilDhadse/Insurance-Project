package com.lti.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.lti.component.UserLoginException;
import com.lti.dto.ForgotPasswordDTO;
import com.lti.entity.User;

@Repository
public class ForgotPasswordDao {

	public String reEmail;
	
	@PersistenceContext
	private EntityManager entityManager;

	public User fetchQuestion(ForgotPasswordDTO forgotPasswordDTO) throws UserLoginException {
		
		Query query = entityManager.createQuery("select a from User  a where a.email =:email");
		query.setParameter("email", forgotPasswordDTO.getEmail());
		try {
			return (User) query.getSingleResult();
		} catch (NoResultException e) {
			throw new UserLoginException("Problem in Email");
		}
			}

	public User validateAnswer(ForgotPasswordDTO forgotPasswordDTO) throws UserLoginException {

		Query query = entityManager
				.createQuery("select b from User as b where b.securityAnswer = :answer");
		query.setParameter("answer", forgotPasswordDTO.getSecurityAnswer());
		try {
			return (User) query.getSingleResult();
		} catch (NoResultException e) {
			throw new UserLoginException("Problem in answer selection");
		}
	}

	@Transactional
	public void updateProcess(ForgotPasswordDTO forgotPasswordDTO, @ModelAttribute("forgot") User forgotPasswordEntity) {
		
		Query query = entityManager
				.createQuery("update User  as e set e.password=:password where e.email=:email");
		query.setParameter("email", forgotPasswordEntity.getEmail());
		query.setParameter("password", forgotPasswordDTO.getPassword());
		query.executeUpdate();
	}
	}

