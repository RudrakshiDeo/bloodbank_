package com.bloodbank.dto;

import java.sql.Date;

public class AddBloodbankDTO {
	
	private String state;
	private String district;
	private String city;
	private String bbank;
	private String hospitalName;
	private String category;
	private String email;
	private String contact;
	private String licence;
	private Date fromDate;
	private Date toDate;
	private String component;
	private String apheresis;
	private String helpline;
	private int noOfBed;
	private String address1;
	private String address2;
	private int pinCode;
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getBbank() {
		return bbank;
	}
	public void setBbank(String bbank) {
		this.bbank = bbank;
	}
	public String getHospitalName() {
		return hospitalName;
	}
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getLicence() {
		return licence;
	}
	public void setLicence(String licence) {
		this.licence = licence;
	}
	public Date getFromDate() {
		return fromDate;
	}
	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}
	public Date getToDate() {
		return toDate;
	}
	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}
	public String getComponent() {
		return component;
	}
	public void setComponent(String component) {
		this.component = component;
	}
	public String getApheresis() {
		return apheresis;
	}
	public void setApheresis(String apheresis) {
		this.apheresis = apheresis;
	}
	public String getHelpline() {
		return helpline;
	}
	public void setHelpline(String helpline) {
		this.helpline = helpline;
	}
	public long getNoOfBed() {
		return noOfBed;
	}
	public void setNoOfBed(int noOfBed) {
		this.noOfBed = noOfBed;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public int getPinCode() {
		return pinCode;
	}
	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}
	@Override
	public String toString() {
		return "AddBloodbankDTO [state=" + state + ", district=" + district + ", city=" + city + ", bbank="
				+ bbank + ", hospitalName=" + hospitalName + ", category=" + category + ", email=" + email + ", contact="
				+ contact + ", licence=" + licence + ", fromDate=" + fromDate + ", toDate=" + toDate + ", component=" 
				+ component + ", apheresis=" + apheresis + ", helpline=" + helpline + ", noOfBed=" + noOfBed 
				+ ", address1=" + address1 + ", address2=" + address2 + ", pinCode=" + pinCode + "]";
	}
}
