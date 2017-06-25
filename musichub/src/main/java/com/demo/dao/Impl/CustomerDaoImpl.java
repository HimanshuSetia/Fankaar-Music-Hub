package com.demo.dao.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.CustomerDao;
import com.demo.model.Authorities;
import com.demo.model.BillingAddress;
import com.demo.model.Cart;
/*import com.demo.model.Cart;*/
import com.demo.model.Customer;
import com.demo.model.ShippingAddress;
import com.demo.model.Users;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {
	@Autowired
	private SessionFactory sessionFactory;

	public Customer saveOrUpdateCustomer(Customer customer) {
		Session session = sessionFactory.openSession();
		// child tables - Users, billingAddress, ShippingAddress
		BillingAddress billingAddress = customer.getBillingAddress();
		ShippingAddress shippingAddress = customer.getShippingAddress();
		customer.setBillingAddress(billingAddress);
		customer.setShippingAddress(shippingAddress);
		billingAddress.setCustomer(customer);
		shippingAddress.setCustomer(customer);
	

		Users users = new Users();
		users.setUsersId(customer.getId());
		users.setUsername(customer.getUsername());
		customer.getUsers();
		customer.setUsers(users);

		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		users.setPassword(encoder.encode(customer.getPassword()));

		users.setEnabled(true);

		Authorities authority = new Authorities();
		authority.setRole("ROLE_USER");
		authority.setUsername(customer.getUsername());

		Cart cart = new Cart();
		customer.setCart(cart);

		cart.setCustomer(customer);
		
		session.saveOrUpdate(billingAddress);
		session.saveOrUpdate(shippingAddress);
		session.saveOrUpdate(users);
		session.saveOrUpdate(authority);
		session.saveOrUpdate(customer);// insert into customer values (.....)
		session.saveOrUpdate(cart);

		session.flush();
		session.close();
		System.out.println(customer.getId());
		return customer;
	}

	public Customer getCustomerByUsername(String username) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Users where username=?");
		query.setString(0, username);
		Users users = (Users) query.uniqueResult();
		Customer customer = users.getCustomer();
		session.close();
		return customer;

	}

	public Customer getCustomerById(int id) {
		Session session = sessionFactory.getCurrentSession();
		return (Customer) session.get(Customer.class, id);
	}

	public List<Customer> getAllCustomers() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Customer");
		List<Customer> customerList = query.list();
		return customerList;

	}

}
