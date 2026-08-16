package com.bloodbank.controller;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.bloodbank.model.BloodStocks;
import com.bloodbank.service.AdminPageService;

@RestController
public class RestApiController {

	@Autowired
	AdminPageService adminPageService;
	
	
	@RequestMapping(value = "/createbloodstocks", method = RequestMethod.POST)
	public String signupGet( @RequestBody BloodStocks bloodStocks) {
		
		System.out.println(bloodStocks);
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now();  
		bloodStocks.setLastupdatedate(toDate(now));
		adminPageService.addBloodStocks(bloodStocks);
		return "redirect:/viewstock";
	}
	
	
	@ResponseBody
	@GetMapping("/bye")
	public String bye() {
		return "bye bye people";
	}
	
	protected Date toDate(final LocalDateTime localDateTime)
	{
		return Date.from(localDateTime.atZone(ZoneId.systemDefault()).toInstant());
	}
}
