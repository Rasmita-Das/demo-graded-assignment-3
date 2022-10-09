package com.gl.cusmngment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.cusmngment.entity.Customer;
import com.gl.cusmngment.service.CusService;

@Controller
@RequestMapping("/customer")
public class CusController {
	
		@Autowired
		private CusService cusService;
		
		@RequestMapping("/list")
		public String listCustomers(Model theModel) {

			List<Customer> theCustomers = cusService.findAll();

			theModel.addAttribute("Customers", theCustomers);

			return "list-Customers";
		}
		
		
		@RequestMapping("/showFormForAdd")
		public String showFormForAdd(Model theModel) {

			Customer theCustomer = new Customer();

			theModel.addAttribute("Customer", theCustomer);

			return "Customer-form";
		}
		
		
		@RequestMapping("/showFormForUpdate")
		public String showFormForUpdate(@RequestParam("customerId") int theId, Model theModel) {

			Customer theCustomer = cusService.findById(theId);

			theModel.addAttribute("Customer", theCustomer);

			return "Customer-form";
		}
		
		
		@PostMapping("/save")
		public String saveStudent(@RequestParam("id") int id, @RequestParam("fName") String fName,
				@RequestParam("lName") String lName, @RequestParam("email") String email) {

			Customer theCustomer;
			
			if (id != 0) {
				theCustomer = cusService.findById(id);
				theCustomer.setfName(fName);
				theCustomer.setlName(lName);
				theCustomer.setEmail(email);
			} else
				theCustomer = new Customer(fName, lName, email);

			cusService.save(theCustomer);

			return "redirect:/customer/list";

		}
		
		
		@RequestMapping("/delete")
		public String delete(@RequestParam("customerId") int theId) {

			// delete the student
			cusService.deleteById(theId);

			// redirect to /student/list
			return "redirect:/customer/list";

		}

}
