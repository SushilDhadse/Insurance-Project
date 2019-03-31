package com.lti.dao;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lti.component.NoSuchClaimException;
import com.lti.component.NoSuchInsuranceException;
import com.lti.dto.ClaimInsuranceDTO;
import com.lti.entity.BuyInsuranceEntity;
import com.lti.entity.ClaimHistoryEntity;
import com.lti.entity.User;

@Repository
public class ClaimInsuranceDao extends GenericDao {

	@PersistenceContext
	private EntityManager entityManager;

	public BuyInsuranceEntity checkInsurance(ClaimInsuranceDTO claimInsuranceDTO) throws NoSuchInsuranceException {
		Query query = entityManager.createQuery("select i from BuyInsuranceEntity i where i.insuranceId=:insuranceid");
		query.setParameter("insuranceid", claimInsuranceDTO.getInsuranceId());
		try {
			return (BuyInsuranceEntity) query.getSingleResult();
		} catch (NoResultException e) {
			throw new NoSuchInsuranceException("No such Insurance Exist");
		}
	}

	public ClaimHistoryEntity matchInsuranceId(BuyInsuranceEntity entity) {
		Query query = entityManager.createQuery("select d from ClaimHistoryEntity d where d.insuranceID=:insuranceid");
		query.setParameter("insuranceid", entity.getInsuranceId());
		try {
			return (ClaimHistoryEntity) query.getSingleResult();
		} catch (NoResultException e) {
			throw new NoSuchInsuranceException("No such Insurance Exist");
		}
	}

	public ClaimHistoryEntity checkStatus(BuyInsuranceEntity entity) {
		Query query = entityManager.createQuery("select c from ClaimHistoryEntity c where c.insuranceID=:insuranceid");
		query.setParameter("insuranceid", entity.getInsuranceId());
		try {
			return (ClaimHistoryEntity) query.getSingleResult();
		} catch (NoResultException e) {
			throw new NoSuchClaimException("No such Claim Exist");
		}
	}

	@Transactional
	public ClaimHistoryEntity fetchClaimDetails(User user) {
		Query query = entityManager.createQuery("select s from ClaimHistoryEntity as s where s.user.id=:userid");
		query.setParameter("userid", user.getId());
		return (ClaimHistoryEntity) query.getSingleResult();

	}

}
