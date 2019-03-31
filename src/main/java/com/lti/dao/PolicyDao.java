package com.lti.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lti.entity.PolicyEntity;
import com.lti.entity.User;
@Repository
public class PolicyDao extends GenericDao {
	public List<PolicyEntity> fetchAll() {

		String jpql = "Select a from PolicyEntity as a";
		return entityManager.createQuery(jpql).getResultList();

	}
}
