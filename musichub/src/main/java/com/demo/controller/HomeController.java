package com.demo.controller;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping({"/","/home"})
	public ModelAndView home()
	{	
		ModelAndView model=new ModelAndView("index");
		return model;
	}
	
	
	@RequestMapping("/login")
	public String login(
	@RequestParam(value="error", required = false)
	String error,
	@RequestParam(value="logout", required = false)
	String logout,
	Model model){
	if(error != null){
	model.addAttribute("error", "Invalid username and password");
	}
	if (logout !=null){
	model.addAttribute("msg", "You have been logged out successfully");
	}
	return "login";
	}
	
	
	@RequestMapping({"about"})
	public ModelAndView about()
	{	
		ModelAndView model=new ModelAndView("about");
		return model;
	}
	@RequestMapping(value={"contact"})
	public ModelAndView contact()
	{	
		ModelAndView model=new ModelAndView("contact");
		return model;
	}
	

}
