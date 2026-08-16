package com.bloodbank.dao;

import java.util.List;

import com.bloodbank.dto.AddBloodbankDTO;

public interface AddBloodbankDAO {
	void createAddBloodbank(AddBloodbankDTO addBloodbankDTO);
	
	List<AddBloodbankDTO> getAddBloodbank();

}
