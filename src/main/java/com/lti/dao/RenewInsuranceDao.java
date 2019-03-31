package com.lti.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.dto.RenewInsuranceDTO;
import com.lti.entity.BuyInsuranceEntity;
import com.lti.entity.User;

@Repository
public class RenewInsuranceDao {

	@PersistenceContext
	private EntityManager entityManger;

	@Transactional
	public User fetchDetailsOfPolicy(RenewInsuranceDTO rdto) {
		User u = (User) entityManger
				.createQuery("select u from BuyInsuranceEntity r join r.user u where r.insuranceId = :insuranceId")
				.setParameter("insuranceId", rdto.getInsuranceId()).getSingleResult();
		return u;
		
	}
	
	public BuyInsuranceEntity fetchDetailsOfInsurance(RenewInsuranceDTO dto)
	{
		BuyInsuranceEntity e=(BuyInsuranceEntity)entityManger
				.createQuery("select i from BuyInsuranceEntity as i where i.insuranceId = :insuranceId")
				.setParameter("insuranceId", dto.getInsuranceId()).getSingleResult();
		return e;
		
	}
	@Transactional
	public void updateDetailsOfPolicy(RenewInsuranceDTO rdto,String startDate,String expiryDate) {

		Query query = entityManger.createQuery(
				"UPDATE BuyInsuranceEntity as  r SET r.startDate=:startdate ,r.endDate=:expirydate WHERE r.insuranceId=:insuranceId ");
		query.setParameter("insuranceId", rdto.getInsuranceId());
		query.setParameter("startdate", startDate);
		query.setParameter("expirydate", expiryDate);
		query.executeUpdate();
	}
}
