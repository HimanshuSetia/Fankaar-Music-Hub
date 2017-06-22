package com.demo.service;

import java.util.List;

import com.demo.model.Customer;

public interface CustomerService {

	Customer saveOrUpdateCustomer(Customer customer);

	public Customer getCustomerByUsername(String username);

	Customer getCustomerById(int id);

	List<Customer> getAllCustomers();
}
