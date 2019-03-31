package com.lti.dto;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class InsuranceTwoWheelerDto {
	private String type = "two wheeler";
	private String manufacturer;
	private String model;
	private String drivingLicence;
	private int age;
	private String registerationNo;
	private String engineNo;
	private String chassisNo;
	private int policyNo;
	private int years;
	private double estimate;

	public String getType() {
		return type;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getDrivingLicence() {
		return drivingLicence;
	}

	public void setDrivingLicence(String drivingLicence) {
		this.drivingLicence = drivingLicence;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getRegisterationNo() {
		return registerationNo;
	}

	public void setRegisterationNo(String registerationNo) {
		this.registerationNo = registerationNo;
	}

	public String getEngineNo() {
		return engineNo;
	}

	public void setEngineNo(String engineNo) {
		this.engineNo = engineNo;
	}

	public String getChassisNo() {
		return chassisNo;
	}

	public void setChassisNo(String chassisNo) {
		this.chassisNo = chassisNo;
	}

	public int getPolicyNo() {
		return policyNo;
	}

	public void setPolicyNo(int policyNo) {
		this.policyNo = policyNo;
	}

	public int getYears() {
		return years;
	}

	public void setYears(int years) {
		this.years = years;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public double getEstimate() {
		return estimate;
	}

	public void setEstimate(double estimate) {
		this.estimate = estimate;
	}

}
