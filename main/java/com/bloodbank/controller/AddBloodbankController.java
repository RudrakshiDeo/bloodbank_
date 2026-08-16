package com.bloodbank.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bloodbank.dto.AddBloodbankDTO;
import com.bloodbank.model.BloodStocks;
import com.bloodbank.service.AddBloodbankService;

@Controller
public class AddBloodbankController {
	
	@Autowired
	AddBloodbankService addBloodbankService;
	
	@GetMapping("/addBloodbank")
	public String loadAddBloodbank( ) {
		return "addbloodbank";
	}
	
	@PostMapping("/addBloodbank")
	public void addBloodbankForm(@ModelAttribute("addBloodbankdto") 
	AddBloodbankDTO addbbankdto, final HttpServletRequest request ) {
		final String districtValue = request.getParameter("district");
		addbbankdto.setDistrict(districtValue);
		addBloodbankService.createAddBloodbank(addbbankdto);
	}

	@RequestMapping("/bloodbankdirectory")
	public ModelAndView bloodbankDirectory() {
		List<AddBloodbankDTO> directoryList = addBloodbankService.getAddBloodbank();
		return new ModelAndView("bloodbankdirectory", "directoryList", directoryList);
	}
	
	@PostMapping("/getAddBloodbank")
	public void getAddBloodbank() {
		addBloodbankService.getAddBloodbank();
	}
	
}
