package com.demo.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.model.Customer;
import com.demo.service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	
	
	@RequestMapping("/register")
	public String SignUp()
	{
		return "register";
	}
	
	@ModelAttribute("customer")
	public Customer newCustomer() {
	
		return new Customer();

	}
	//we use  @model attribute(command name) to read the values that user has entered in the jsp page.
	@RequestMapping("/registerCustomer")
	public String addCustomer(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, Model model) {
		List<Customer> customerList = customerService.getAllCustomers();
		for (int i=0; i< customerList.size(); i++){
            if(customer.getEmail().equals(customerList.get(i).getEmail())){
                model.addAttribute("emailMsg", "Email already exists");

                return "register";
            }

            if(customer.getUsername().equals(customerList.get(i).getUsername())){
                model.addAttribute("usernameMsg", "Username already exists");

                return "register";
            }
        }
		customerService.saveOrUpdateCustomer(customer);
		return "redirect:/login";
	}
	
}



