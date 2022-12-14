package com.gl.cusmngment.entity;

import javax.persistence.*;

@Entity
@Table(name="Customer")
public class Customer {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Id")
	public int id;
	
	@Column(name="FirstName")
	public String fName;
	
	@Column(name="LastName")
	public String lName;
	
	@Column(name="Email")
	public String email;
	
	public Customer() {
		
	}

	public Customer(String fName, String lName, String email) {
		this.fName = fName;
		this.lName = lName;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", fName=" + fName + ", lName=" + lName + ", email=" + email + "]";
	}

}
