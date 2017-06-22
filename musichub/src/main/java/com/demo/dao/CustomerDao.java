package com.demo.dao;

import java.util.List;

import com.demo.model.Customer;

public interface CustomerDao {

	Customer saveOrUpdateCustomer(Customer customer);

	Customer getCustomerByUsername(String username);

	Customer getCustomerById(int id);

	List<Customer> getAllCustomers();
}
