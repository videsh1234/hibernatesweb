package com.wipro.velocity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

//persistent class for 1-1 mapping bidirectional

@Entity
@Table(name="customer")
public class Customer {
	
	@Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @PrimaryKeyJoinColumn
    private int empId;
    private String name,email;
   
    @OneToOne(targetEntity=Address.class,cascade=CascadeType.ALL)
    Address address;

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
    
    

	
}