package com.onlinecrime.controller;

import java.util.List;

import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.onlinecrime.Service.AdminLoginService;
import com.onlinecrime.Service.CitizenComplaintService;
import com.onlinecrime.Service.PoliceOfficerServiceT;
import com.onlinecrime.bean.AdminLogin;
import com.onlinecrime.bean.CitizenComplaintBean;
import com.onlinecrime.bean.PoliceOfficerT;
import com.onlinecrime.bean.WantedCriminalT;

@Controller
public class AdminLoginController {
	
	@Autowired
	private AdminLoginService adminloginservice;
	
	@Autowired
	private CitizenComplaintService cService;
	
	@Autowired
	private PoliceOfficerServiceT pService;
	
	
	@GetMapping("/admin")
	public String loginLauncher(Model model) {
		
		AdminLogin  loginbean= new AdminLogin();
		model.addAttribute("loginData",loginbean);
		
		
		return "adminLoginForm";
		
	
	}
	
	@PostMapping("/admin")
	public ModelAndView doLogin(@Valid @ModelAttribute("loginData") AdminLogin  loginbean,BindingResult br) {
		if(br.hasErrors()) {
			return new ModelAndView("adminLoginForm");
		}
		
		AdminLogin savedloginbean=adminloginservice.authenticateAdmin(loginbean.getUsername(), loginbean.getPassword());
		if(Objects.nonNull(savedloginbean)) {
			return new ModelAndView("Admin_Dashboard","adminData",savedloginbean);
		}
		else {
			return new ModelAndView("adminLoginForm");
		}
		//return new ModelAndView("loginPoliceData","flag","Invalid Username or password!!..");

	}
	@GetMapping("/viewPolice")
	public String getPolice(Model model) {
		List<PoliceOfficerT> po=pService.getAllPolice();
		model.addAttribute("pList",po);
		return "allPolice";
	}
	
	@GetMapping("/updatePol/{polId}")
	public String updatePoliceLauncher(@PathVariable Integer polId,Model model) {
		PoliceOfficerT pct=pService.getPoliceById(polId);
		model.addAttribute("upPolice",pct);
		return "updatePoliceForm";
	}
	
	@GetMapping("/admindashboard")
	public String adminDashboardLauncher() {
		return "Admin_Dashboard";
	}
	
	@PostMapping("/uPDetails")
	public ModelAndView doUpdateCriminal(@Valid @ModelAttribute("upPolice") PoliceOfficerT pc,BindingResult br) {
		if(br.hasErrors()) {			
			return new ModelAndView("updatePoliceForm");
		}
		pService.updatePolice(pc);
		return new ModelAndView("policeUpdateSuccess");
	}
	
	@GetMapping("/deletePol")
	public String doDeletePolice(@RequestParam("pid") Integer polId,Model model) {
		List<PoliceOfficerT> lp=pService.deletePolice(polId);
		model.addAttribute("pList", lp);
		return "allPolice";
	}
	
	@GetMapping("/viewAllComp")
	public String getComplaints(Model model) {
		List<CitizenComplaintBean> gc=cService.getAllComplaints();
		model.addAttribute("compList",gc);
		return "allComplaints";
	}
	
	@GetMapping("/adminlogout")
	public String doLogout(HttpServletRequest req, HttpServletResponse res) {
		
		return "redirect:/admin";	
	}
	

}
