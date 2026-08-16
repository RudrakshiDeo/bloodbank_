package com.bloodbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bloodbank.dao.AddBloodbankDAO;
import com.bloodbank.dto.AddBloodbankDTO;

@Component
public class DefaultAddBloodbankService implements AddBloodbankService {
	
	@Autowired
	AddBloodbankDAO addBloodbankDAO;

	@Override
	public void createAddBloodbank(AddBloodbankDTO addBloodbankDTO) {
		addBloodbankDAO.createAddBloodbank(addBloodbankDTO);
		
	}

	@Override
	public List<AddBloodbankDTO> getAddBloodbank() {
		return addBloodbankDAO.getAddBloodbank();
	}

}
