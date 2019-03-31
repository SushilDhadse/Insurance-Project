package com.lti.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lti.entity.ClaimHistoryEntity;
import com.lti.entity.PolicyEntity;
import com.lti.entity.User;

@Repository
public class AdminDao extends GenericDao {

	public List<User> fetchAll() {

		String jpql = "Select a from User as a";
		return entityManager.createQuery(jpql).getResultList();

	}
	public List<PolicyEntity> fetchAllPolicy() {

		String jpql = "Select a from PolicyEntity as a";
		return entityManager.createQuery(jpql).getResultList();

	}
	
		public List<ClaimHistoryEntity>  fetchAllClaims() {
	String jpql = "Select a from ClaimHistoryEntity as a";
	return entityManager.createQuery(jpql).getResultList();

		
	}

}
