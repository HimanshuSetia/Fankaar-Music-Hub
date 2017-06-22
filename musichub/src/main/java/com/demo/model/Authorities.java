package com.demo.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Authorities implements Serializable { 
	 @Id 
	 @GeneratedValue(strategy=GenerationType.AUTO)  	
	 private int authoritiesId; 
	 
	 @Column(unique=true)
	 private String username;  
	 private String role; 
	

	 
	public int getAuthoritiesId() {  	
		return authoritiesId; 
	    } 

	public void setAuthoritiesId(int authoritiesId) {  	
		this.authoritiesId = authoritiesId; 
	    } 

	public String getUsername() {  
		return username; 
	    } 

	public void setUsername(String username) {  
		this.username = username; 
	    }

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	} 

	
	}// the END of the class