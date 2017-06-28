package com.demo.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

import com.demo.model.BillingAddress;
import com.demo.model.ShippingAddress;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Customer implements Serializable {
	public Customer() {
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int id;

@NotEmpty (message = "The customer name must not be null")
private String firstname;



@NotEmpty(message = "The customer name must not be null")
private String lastname;

@NotEmpty (message = "The customer email must not be null")
private String email;

private String phonenumber;

@NotEmpty (message = "The customer username must not be null")
private String username;

@NotEmpty (message = "The customer password must not be null")
private String password;

@OneToOne
@JoinColumn(name="billsId")
private BillingAddress billingAddress;

@OneToOne
@JoinColumn(name="shipId")
private ShippingAddress shippingAddress;

@OneToOne
@JoinColumn(name="usersId")
private Users users;

@OneToOne()
@JoinColumn(name="cartId")
@JsonIgnore
private Cart cart;


public Cart getCart() {
	return cart;
}

public void setCart(Cart cart) {
	this.cart = cart;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public Users getUsers() {
	return users;
}

public void setUsers(Users users) {
	this.users = users;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}



public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhonenumber() {
	return phonenumber;
}
public void setPhonenumber(String phonenumber) {
	this.phonenumber = phonenumber;
}

public BillingAddress getBillingAddress() {
	return billingAddress;
}

public void setBillingAddress(BillingAddress billingAddress) {
	this.billingAddress = billingAddress;
}

public ShippingAddress getShippingAddress() {
	return shippingAddress;
}

public void setShippingAddress(ShippingAddress shippingAddress) {
	this.shippingAddress = shippingAddress;
}




}