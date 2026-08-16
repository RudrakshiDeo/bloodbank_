package com.bloodbank.service;

import java.util.List;

import com.bloodbank.dto.AddBloodbankDTO;

public interface AddBloodbankService {
	void createAddBloodbank(AddBloodbankDTO addBloodbankDTO);
	List<AddBloodbankDTO> getAddBloodbank();

}
