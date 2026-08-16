package com.bloodbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bloodbank.dao.AdminPageDao;
import com.bloodbank.model.BloodStocks;

@Component
public class DefaultAdminPageServiceImpl implements AdminPageService {

	@Autowired
	AdminPageDao adminPageDao;
	
	
	@Override
	public int addBloodStocks(BloodStocks p) {
		
		return adminPageDao.addBloodStocks(p);
	}

	@Override
	public List<BloodStocks> getAllBloodStocks() {
		return adminPageDao.getAllBloodStocks();
	}

	@Override
	public int deleteBloodStocks(int id) {
		return adminPageDao.deleteBloodStocks(id);
	}

	@Override
	public BloodStocks getBloodStocksById(int id) {
		
		return adminPageDao.getBloodStocksById(id);
	}

	@Override
	public int updateBloodStocks(BloodStocks bloodStock) {
		adminPageDao.updateBloodStocks(bloodStock);
		return 0;
	}

}
