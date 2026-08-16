package com.bloodbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.bloodbank.dao.DonorRegistrationDAO;
import com.bloodbank.dto.DonorRegistrationDTO;

@Component
public class DefaultDonorRegistrationService implements DonorRegistrationService {
	
	@Autowired
	DonorRegistrationDAO donorRegistrationDAO;
	
	@Override
	public void createDonorRegistration(DonorRegistrationDTO donorRegistrationDTO) {
		donorRegistrationDAO.createDonorRegistration(donorRegistrationDTO);
	}
	
	@Override
	public List<DonorRegistrationDTO> getDonorRegistration() {
		return donorRegistrationDAO.getDonorRegistration();
	}

}
