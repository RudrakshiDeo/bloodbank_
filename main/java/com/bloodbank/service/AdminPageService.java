package com.bloodbank.service;

import java.util.List;

import com.bloodbank.model.BloodStocks;

public interface AdminPageService {
	 public int addBloodStocks(BloodStocks p);
	 public List<BloodStocks> getAllBloodStocks();
	 public int deleteBloodStocks(int id);
	 public BloodStocks getBloodStocksById(int id);
	 public int updateBloodStocks(BloodStocks p);
}
