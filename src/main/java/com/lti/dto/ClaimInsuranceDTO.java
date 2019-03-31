package com.lti.dto;

import org.springframework.web.multipart.MultipartFile;

public class ClaimInsuranceDTO {

	
	private int insuranceId;
	private long mobileNo;
	private String reasonToClaim;
	
	private MultipartFile profilePic;
	
	public int getInsuranceId() {
		return insuranceId;
	}
	public void setInsuranceId(int insuranceId) {
		this.insuranceId = insuranceId;
	}
	public long getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(long mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getReasonToClaim() {
		return reasonToClaim;
	}
	public void setReasonToClaim(String reasonToClaim) {
		this.reasonToClaim = reasonToClaim;
	}
	public MultipartFile getProfilePic() {
		return profilePic;
	}
	public void setProfilePic(MultipartFile profilePic) {
		this.profilePic = profilePic;
	}
	
	
}
