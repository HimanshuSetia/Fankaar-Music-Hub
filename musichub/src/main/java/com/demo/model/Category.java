package com.demo.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.*;
import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
public class Category implements Serializable{ 
	public Category() {
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String categoryDetails;
	
	@OneToMany(mappedBy="category",cascade = {CascadeType.ALL})
	@JsonIgnore
	private List<Product> products;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategoryDetails() {
		return categoryDetails;
	}
	public void setCategoryDetails(String categoryDetails) {
		this.categoryDetails = categoryDetails;
	}
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
	
}
