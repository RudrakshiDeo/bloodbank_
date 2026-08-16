package com.bloodbank.service;

import java.util.List;

import com.bloodbank.dto.DonorRegistrationDTO;

public interface DonorRegistrationService {
	
	void createDonorRegistration(DonorRegistrationDTO donorRegistrationDTO);
	List<DonorRegistrationDTO> getDonorRegistration();

}
