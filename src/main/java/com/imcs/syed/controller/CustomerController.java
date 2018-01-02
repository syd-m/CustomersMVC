package com.imcs.syed.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.syed.entity.Customer;
import com.syed.entity.PaymentMethod;
import com.syed.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	CustomerService customerService;

	@RequestMapping(value = "/view", method = RequestMethod.POST)
	public String showHome() {
		return "home";
	}
	
	@GetMapping(value="/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView getCreateCustomerForm() {
		ModelAndView view = new ModelAndView("createCustomer");
		view.addObject("customer", new Customer());
		return view;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		return "login";
	}

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public ModelAndView searchCustomer(@RequestParam Long customerId){
		ModelAndView modelAndView = new ModelAndView("home");
		Customer customer = customerService.findCustomer(customerId);
		List<Customer> foundCustomer = new ArrayList<>();
		foundCustomer.add(customer);
		modelAndView.addObject("customers", foundCustomer);
		return modelAndView;
	}
	@RequestMapping(value = "/searchPaymentMethods", method = RequestMethod.GET)
	public String searchPayment() {
		return "searchPayments";
	}
	
	@RequestMapping(value="/viewPayments", method = RequestMethod.GET)
	public ModelAndView searchPayments(@RequestParam Long customerId) {
		ModelAndView modelAndView = new ModelAndView("searchPayments");
		List<PaymentMethod> paymentMethods = customerService.findPaymentMethods(customerId);
		modelAndView.addObject("paymentMethods", paymentMethods);
		return modelAndView;
	}
	
	@RequestMapping(value = "/viewAllCustomers", method = RequestMethod.GET)
	public ModelAndView viewAllCustomers() {
		ModelAndView modelAndView = new ModelAndView("home");
		List<Customer> allCustomers = customerService.viewAllCustomers();
		modelAndView.addObject("customers", allCustomers);
		return modelAndView;
	}
	
	@RequestMapping(value="/viewCustomer", method = RequestMethod.POST)
	public ModelAndView createCustomer(@ModelAttribute("customer") Customer customer) {
		ModelAndView modelAndView = new ModelAndView("viewCustomer");
		customer.getAddress().setCustomer(customer);
		Customer newCustomer = customerService.createCustomer(customer);
		List<Customer> createdCustomer = new ArrayList<>();
		createdCustomer.add(newCustomer);
		modelAndView.addObject("customers", createdCustomer);
		return modelAndView;
	}
	
	@RequestMapping(value = "/{customerId}/addPayments", method = RequestMethod.GET)
	public ModelAndView getPaymentMethodsForm(@PathVariable Long customerId) {
		Customer customer = customerService.findCustomer(customerId);
		ModelAndView view = new ModelAndView("updatePaymentMethodsForm");
		view.addObject("paymentMethod", new PaymentMethod());
		view.addObject("customers", customer);
		return view;
	}
	
	@RequestMapping(value="/{customerId}/viewPaymentMethods", method = RequestMethod.POST)
	public String createPaymentMethod(@ModelAttribute PaymentMethod paymentMethod, @PathVariable Long customerId) {
		List<PaymentMethod> paymentMethods = new ArrayList<>();
		Customer customer = customerService.findCustomer(customerId);
		paymentMethod.setCustomer(customer);
		paymentMethods.add(paymentMethod);
		customerService.createPaymentMethods(paymentMethods);
		return "redirect:/viewAllCustomers";
	}
	
	@RequestMapping(value = "/shopProducts", method = RequestMethod.GET)
	public String shopProducts() {
		return "shopProducts";
	}
}