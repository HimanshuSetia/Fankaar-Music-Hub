package com.demo.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
public class Product implements Serializable //implements Serializable so as all vars are not initialized automt. . serializable is an interface and it doesnt have any function
{
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	//@NotEmpty(message = "Product Name is mandatory")
	private String name;
	
	@ManyToOne
	@JoinColumn(name = "cid")
	private Category category;

	@ManyToOne
	@JoinColumn(name = "sid")
	private Supplier supplier;
	
	@Lob
	private String description;

   

	//@Min(value = 100)
	private double price;

	//@Min(value = 1)
	private int quantity;

	
	@Temporal(TemporalType.DATE)
	private Date mfg;

	@Transient
	private MultipartFile image;
	public MultipartFile getImage() {
	return image;
	}
	public void setImage(MultipartFile image) {
	this.image = image;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Date getMfg() {
		return mfg;
	}

	public void setMfg(Date mfg) {
		this.mfg = mfg;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
		public Category getCategory() {
			return category;}
		public void setSupplier(Supplier supplier) {
			this.supplier = supplier;
		}
	public Supplier getSupplier() {
		return supplier;
	}
	
	}

