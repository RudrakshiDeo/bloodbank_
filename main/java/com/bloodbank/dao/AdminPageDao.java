package com.bloodbank.dao;

import java.util.List;

import com.bloodbank.model.BloodStocks;

public interface AdminPageDao {
	 public int addBloodStocks(BloodStocks p);
	 public List<BloodStocks> getAllBloodStocks();
	 public int deleteBloodStocks(int id);
	 public BloodStocks getBloodStocksById(int id);
	 public int updateBloodStocks(BloodStocks p);
}
