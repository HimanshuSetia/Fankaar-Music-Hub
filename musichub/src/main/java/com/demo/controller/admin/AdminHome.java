package com.demo.controller.admin;


import com.demo.model.Customer;

import com.demo.model.Product;
import com.demo.service.CustomerService;
import com.demo.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;



@Controller

@RequestMapping("/admin")

public class AdminHome {

   
@Autowired
    
private ProductService productService;
    
@Autowired
    
private CustomerService customerService;

    

@RequestMapping
   
 public String adminPage(){
        return "admin";
    }

    

@RequestMapping("/productInventory")
   
 public String productInventory(Model model){
       
List<Product> products = productService.getAllProducts();
        
model.addAttribute("products", products);

        
return "redirect:/prodlist";
    }

   

@RequestMapping("/customer")
    
public String customerManagerment(Model model)
{

        List<Customer> customerList = customerService.getAllCustomers();
        
model.addAttribute("customerList", customerList);

        
return "customerManagement";
    }


} 
