package com.bloodbank.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.bloodbank.dto.DonorRegistrationDTO;
import com.bloodbank.service.DonorRegistrationService;

@Controller
public class DonorRegistrationController {

	@Autowired
	DonorRegistrationService donorRegistrationService;
	
	@GetMapping("/donorRegistration")
	public String loadDonorRegistrationPage( ) {
		return "donorRegistrationPage";
	}
	
	@PostMapping("/donorRegistration")
	public void donorRegistrationForm(@ModelAttribute("donorRegistrationDTO") 
	DonorRegistrationDTO donorRegdto, final HttpServletRequest request ) {
		final String districtValue = request.getParameter("dist");
		donorRegdto.setDistrict(districtValue);
		donorRegistrationService.createDonorRegistration(donorRegdto);
	}
	
	@PostMapping("/getDonorRegistration")
	public void getDonorRegistration() {
		donorRegistrationService.getDonorRegistration();
	}
}
