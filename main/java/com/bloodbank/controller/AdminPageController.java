package com.bloodbank.controller;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bloodbank.dto.SignupDTO;
import com.bloodbank.model.BloodStocks;

import com.bloodbank.service.AdminPageService;

@Controller
public class AdminPageController {

	@Autowired
	AdminPageService adminPageService;

	@GetMapping("/admin")
	public String admin() {
		return "adminpage";

	}

	@PostMapping("/admin-process")
	public String signupGet(@ModelAttribute("bloodstocks") BloodStocks bloodStocks) {

		System.out.println(bloodStocks);
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();
		bloodStocks.setLastupdatedate(toDate(now));
		adminPageService.addBloodStocks(bloodStocks);
		return "redirect:/viewstock";
	}

	@RequestMapping("/edit/{id}")
	public ModelAndView editPerson(@PathVariable("id") int id1) {
		BloodStocks p = adminPageService.getBloodStocksById(id1);
		return new ModelAndView("editbloodstocksform", "per", p);
	}

	@RequestMapping("/viewstock")
	public ModelAndView viewAllBloodStocks() {
		List<BloodStocks> plist = adminPageService.getAllBloodStocks();
		return new ModelAndView("viewbloodstocks", "plist", plist);
	}

	@RequestMapping("/delete/{id}")
	public ModelAndView deletePerson(@PathVariable("id") int id) {
		int n = adminPageService.deleteBloodStocks(id);
		return new ModelAndView("redirect:/viewstock");

	}

	@PostMapping("/editstocks")
	public String updatePerson(@ModelAttribute("bloodstocks") BloodStocks bloodStocks) {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();

		BloodStocks stocks = new BloodStocks();
		stocks.setState(bloodStocks.getState());
		stocks.setDistrict(bloodStocks.getDistrict());
		stocks.setBloodcentname(bloodStocks.getBloodcentname());
		stocks.setLastupdatedate(toDate(now));
		stocks.setA_positive(bloodStocks.getA_positive());
		stocks.setA_negative(bloodStocks.getA_negative());
		stocks.setB_positive(bloodStocks.getB_positive());
		stocks.setB_negative(bloodStocks.getB_negative());
		stocks.setAb_positive(bloodStocks.getAb_positive());
		stocks.setAb_negative(bloodStocks.getAb_negative());
		stocks.setO_positive(bloodStocks.getO_positive());
		stocks.setO_negative(bloodStocks.getO_negative());
		stocks.setId(bloodStocks.getId());

		adminPageService.updateBloodStocks(stocks);
		return "redirect:/viewstock";

	}

	protected Date toDate(final LocalDateTime localDateTime) {
		return Date.from(localDateTime.atZone(ZoneId.systemDefault()).toInstant());
	}

}
