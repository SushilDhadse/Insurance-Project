package com.lti.dto;

public class ForgotPasswordDTO {

	private String email;
	private String securityquestion;
	private String securityAnswer;
	private String password;
	private String newPassword;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSecurityquestion() {
		return securityquestion;
	}
	public void setSecurityquestion(String securityquestion) {
		this.securityquestion = securityquestion;
	}
	
	public String getSecurityAnswer() {
		return securityAnswer;
	}
	public void setSecurityAnswer(String securityAnswer) {
		this.securityAnswer = securityAnswer;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	
	
}
