package com.gl.cusmngment.service;

import java.util.List;

import com.gl.cusmngment.entity.Customer;

public interface CusService {

	public List<Customer> findAll();

	public Customer findById(int theId);

	public void save(Customer theCustomer);

	public void deleteById(int theId);
	
}
