package com.lti.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lti.dao.AdminDao;
import com.lti.dto.PolicyDto;
import com.lti.entity.ClaimHistoryEntity;
import com.lti.entity.PolicyEntity;
import com.lti.entity.User;

@Service
public class AdminService {

	@Autowired
	private AdminDao adminDao;
	
	@Transactional
	public List<User> getUsers(){
		List<User> users=adminDao.fetchAll();
		return users;
	}
	
	@Transactional
	public List<PolicyEntity> getPolicy(){
		List<PolicyEntity> policy=adminDao.fetchAllPolicy();
		return policy;
	}
	
	@Transactional
	public void addPolicy(PolicyDto policydto) {
		PolicyEntity policyentity=new PolicyEntity();
		policyentity.setPolicyname(policydto.getPolicyname());
		policyentity.setDiscount(policydto.getDiscount());
		adminDao.add(policyentity);
	}
	
	@Transactional
	public List<ClaimHistoryEntity> getClaim(){
		List<ClaimHistoryEntity> claim=adminDao.fetchAllClaims();
		return claim;
	}
}
