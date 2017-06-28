package com.demo.model;

import java.io.Serializable;

import javax.persistence.*;

@Entity
public class Users implements Serializable {
public Users() {
	// TODO Auto-generated constructor stub
}
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int usersId; 
	
	@Column(unique=true)
	private String username;
	private String password;
	private Boolean enabled;

	@OneToOne(mappedBy="users")
	private Customer customer;

	public int getUsersId() {
		return usersId; 
	    }

	public void setUsersId(int usersId) { 
		this.usersId = usersId; 
	    }

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	    
		 
		} // The End of Class; 



