package com.demo.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class Supplier implements Serializable {	
	public Supplier() {
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int sid;
	
	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	private String supname;
	private String supaddress;
	private String supnumber;
	private String supemail;
	private String brand;
	private String supproduct;
	
	@OneToMany(mappedBy = "supplier")
	@JsonIgnore
	private List<Product> products;

	

	public String getSupname() {
		return supname;
	}

	public void setSupname(String supname) {
		this.supname = supname;
	}

	public String getSupaddress() {
		return supaddress;
	}

	public void setSupaddress(String supaddress) {
		this.supaddress = supaddress;
	}

	public String getSupnumber() {
		return supnumber;
	}

	public void setSupnumber(String supnumber) {
		this.supnumber = supnumber;
	}

	public String getSupemail() {
		return supemail;
	}

	public void setSupemail(String supemail) {
		this.supemail = supemail;
	}

	public String getSupproduct() {
		return supproduct;
	}

	public void setSupproduct(String supproduct) {
		this.supproduct = supproduct;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	
}
