package com.demo.model;

import java.io.Serializable;

import javax.persistence.*;

import com.demo.model.Customer;
@Entity
public class BillingAddress implements Serializable {public BillingAddress() {
	// TODO Auto-generated constructor stub
}

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int billsId;
	private String streetName;
    private String houseNumber;
    private String city;
    private String state;
    private String country;
    private String zipCode;


    @OneToOne
    private Customer customer;
 
    public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public int getBillsId() {
		return billsId;
	}

	public void setBillsId(int billsId) {
		this.billsId = billsId;
	}

	public String getStreetName() {
		return streetName;
	}

	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}

	public String getHouseNumber() {
		return houseNumber;
	}

	public void setHouseNumber(String houseNumber) {
		this.houseNumber = houseNumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}



    
}