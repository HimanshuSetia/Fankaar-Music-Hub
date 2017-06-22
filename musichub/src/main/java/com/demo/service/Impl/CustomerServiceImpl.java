package com.demo.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.CustomerDao;
import com.demo.model.Customer;
import com.demo.service.CustomerService;
@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerDao customerDao;

	public Customer saveOrUpdateCustomer(Customer customer) {
		return customerDao.saveOrUpdateCustomer(customer);
	}

	public Customer getCustomerByUsername(String username){
		return customerDao.getCustomerByUsername(username);
	}
	
	 public Customer getCustomerById(int id){
	        return customerDao.getCustomerById(id);
	    }

	    public List<Customer> getAllCustomers(){
	        return customerDao.getAllCustomers();
	    }
}
