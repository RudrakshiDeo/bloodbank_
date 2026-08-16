package com.bloodbank.model;

import java.util.Date;

public class BloodStocks {
	private int id; 
	 private String state; 
	 private String district; 
	 private String bloodcentname;
	 private Date  lastupdatedate; 
	 private String a_positive; 
	 private String a_negative; 
	 private String b_positive; 
	 private String b_negative; 
	 private String ab_positive; 
	 private String ab_negative; 
	 private String o_positive;  
	 private String o_negative;
	@Override
	public String toString() {
		return "BloodStocks [id=" + id + ", state=" + state + ", district=" + district + ", bloodcentname="
				+ bloodcentname + ", lastupdatedate=" + lastupdatedate + ", a_positive=" + a_positive + ", a_negative="
				+ a_negative + ", b_positive=" + b_positive + ", b_negative=" + b_negative + ", ab_positive="
				+ ab_positive + ", ab_negative=" + ab_negative + ", o_positive=" + o_positive + ", o_negative="
				+ o_negative + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getBloodcentname() {
		return bloodcentname;
	}
	public void setBloodcentname(String bloodcentname) {
		this.bloodcentname = bloodcentname;
	}
	public Date getLastupdatedate() {
		return lastupdatedate;
	}
	public void setLastupdatedate(Date lastupdatedate) {
		this.lastupdatedate = lastupdatedate;
	}
	public String getA_positive() {
		return a_positive;
	}
	public void setA_positive(String a_positive) {
		this.a_positive = a_positive;
	}
	public String getA_negative() {
		return a_negative;
	}
	public void setA_negative(String a_negative) {
		this.a_negative = a_negative;
	}
	public String getB_positive() {
		return b_positive;
	}
	public void setB_positive(String b_positive) {
		this.b_positive = b_positive;
	}
	public String getB_negative() {
		return b_negative;
	}
	public void setB_negative(String b_negative) {
		this.b_negative = b_negative;
	}
	public String getAb_positive() {
		return ab_positive;
	}
	public void setAb_positive(String ab_positive) {
		this.ab_positive = ab_positive;
	}
	public String getAb_negative() {
		return ab_negative;
	}
	public void setAb_negative(String ab_negative) {
		this.ab_negative = ab_negative;
	}
	public String getO_positive() {
		return o_positive;
	}
	public void setO_positive(String o_positive) {
		this.o_positive = o_positive;
	}
	public String getO_negative() {
		return o_negative;
	}
	public void setO_negative(String o_negative) {
		this.o_negative = o_negative;
	}
	 
	 
}
