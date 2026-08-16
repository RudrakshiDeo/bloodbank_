package com.bloodbank.dto;

import java.sql.Date;

public class DonorRegistrationDTO {
	
	private String username;
	private String fullname;
	private String gender;
	private Date dob;
	private String bloodGroup;
	private int contact;
	private String email;
	private String state;
	private String district;
	private String city;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public int getContact() {
		return contact;
	}
	public void setContact(int contact) {
		this.contact = contact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
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
	@Override
	public String toString() {
		return "DonorRegistrationDTO [username=" + username + ", fullname=" + fullname + ", gender=" + gender + " dob=" + dob + ", bloodGroup=" 
				+ bloodGroup + ", contact=" + contact + " email=" + email + ", state=" + state + ", district=" + district 
				+ ", city=" + city + "]";
	}
}
