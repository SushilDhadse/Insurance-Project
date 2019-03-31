package com.lti.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lti.component.NoSuchClaimException;
import com.lti.component.NoSuchInsuranceException;
import com.lti.dao.ClaimInsuranceDao;
import com.lti.dto.ClaimInsuranceDTO;
import com.lti.entity.BuyInsuranceEntity;
import com.lti.entity.ClaimHistoryEntity;
import com.lti.entity.User;

@Service
public class ClaimInsuranceService {

	@Autowired
	private ClaimInsuranceDao claimInsuranceDao;
	public int why = 0;

	public BuyInsuranceEntity passDetails(ClaimInsuranceDTO claimInsuranceDTO, User user,Map<String, Object> model) {

		try {
			BuyInsuranceEntity entity = claimInsuranceDao.checkInsurance(claimInsuranceDTO);
			if (checkUserId(entity, user)) {
				if (checkInsuranceId(entity)) {
					if (checkClaim(entity))
						return entity;
					else {
						model.put("message", "SORRY, Insurance Already Claimed...!!! ");
						return null;

					}

				} else {
					initInsert(claimInsuranceDTO, entity, user);
					return entity;
				}
			} else {
				model.put("message", "SORRY, Incorrect Insurance Id...!!!");
				return null;
			}
		} catch (NoSuchInsuranceException e) {
			model.put("message", "SORRY, No Such Insurance ID...!!!");
			return null;
		}
	}

	public boolean checkInsuranceId(BuyInsuranceEntity entity) {
		try {
			claimInsuranceDao.matchInsuranceId(entity);
			return true;
		} catch (NoSuchInsuranceException e) {
			return false;
		}
	}

	public boolean checkClaim(BuyInsuranceEntity entity) {
		try {
			ClaimHistoryEntity history = claimInsuranceDao.checkStatus(entity);
			if (history.getClaimReason() == "Pending")
				return true;
			else
				return false;
		} catch (NoSuchClaimException e) {
			return false;
		}
	}

	public boolean checkUserId(BuyInsuranceEntity entity, User user) {

		if (entity.getUser().getId() == (user.getId()))
			return true;
		else
			return false;
	}

	public String calculateDate() {
		Date date = new Date();
		String currentDate = new SimpleDateFormat("dd-MM-yyyy").format(date);
		return currentDate;
	}

	@Transactional
	public void initInsert(ClaimInsuranceDTO claimDTO, BuyInsuranceEntity en, User user) {

		ClaimHistoryEntity claim = new ClaimHistoryEntity();

		claim.setUser(user);
		claim.setInsuranceID(en.getInsuranceId());
		claim.setClaimDate(calculateDate());
		claim.setClaimStatus("Pending");
		claim.setClaimAmount(en.getEstimate());
		claim.setClaimReason(claimDTO.getReasonToClaim());
		claim.setProfilePicFileName(claimDTO.getProfilePic().getOriginalFilename());
		claimInsuranceDao.add(claim);
	}

	public ClaimHistoryEntity fetchClaim(User user) {
		ClaimHistoryEntity claim=claimInsuranceDao.fetchClaimDetails(user);
		return claim ;
		
		
	}
}
