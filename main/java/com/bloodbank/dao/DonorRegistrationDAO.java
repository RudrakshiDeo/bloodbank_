package com.bloodbank.dao;

import java.util.List;

import com.bloodbank.dto.DonorRegistrationDTO;

public interface DonorRegistrationDAO {
	void createDonorRegistration(DonorRegistrationDTO donorRegistrationDTO);

	List<DonorRegistrationDTO> getDonorRegistration();

}
