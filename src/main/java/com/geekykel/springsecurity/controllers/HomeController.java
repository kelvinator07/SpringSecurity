package com.geekykel.springsecurity.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.LinkedHashMap;
import java.util.List;

@Controller
public class HomeController {
	
	@GetMapping("/index")
	public String homePage() {
		//List<Product> products = ProductDataUtil.getProducts();

		//model.addAttribute("products", products);

		//LinkedHashMap<Integer, String> categories = ProductDataUtil.getCategories();

		//model.addAttribute("categories", categories);

		return "index";
	}

	@PostMapping("/login")
	public String loginPage(@RequestParam("username") String username,
							 @RequestParam("password") String password, Model model) {

		if (username.isEmpty() || password.isEmpty()) {

			model.addAttribute("warn", "Kindly Fill All Fields.");

			return "signin";
		}

//		List<Customer> customers = ProductDataUtil.getCustomers();
//
//		for (Customer customer: customers) {
//			if (customer.getUsername() == username && customer.getPassword() == password) {
//				model.addAttribute("success", "Welcome back, " + customer.getUsername());
//				model.addAttribute("login",true);
//			}
//		}

		return "redirect:/shawpify";
	}

	@RequestMapping("/signin")
	public String signinPage() {
		return "signin";
	}

	@RequestMapping("/signup")
	public String signupPage() {
		return "signup";
	}

	@RequestMapping("/signout")
	public String signoutPage() {
		return "signout";
	}

	@RequestMapping("/cart")
	public String cartPage() {
		return "cart";
	}

	@RequestMapping("/products")
	public String productsPage(Model model) {
//		List<Product> products = ProductDataUtil.getProducts();
//
//		model.addAttribute("products", products);
//
//		LinkedHashMap<Integer, String> categories = ProductDataUtil.getCategories();
//
//		model.addAttribute("categories", categories);

		return "products";
	}

	@RequestMapping("/product")
	public String productPage(@RequestParam("id") int productId, Model model) {

//		Product product = ProductDataUtil.getProducts().get(productId-1);
//
//		model.addAttribute("product", product);
//
//		LinkedHashMap<Integer, String> categories = ProductDataUtil.getCategories();
//
//		model.addAttribute("categories", categories);

		return "product";
	}

	@PostMapping("/contactForm")
	public String contactForm(@RequestParam("name") String name,
							  @RequestParam("email") String email,
							  @RequestParam("message") String message, Model model) {

		if (name.isEmpty() || email.isEmpty() || message.isEmpty()) {

			model.addAttribute("warn", "Kindly Fill All Fields.");

			return "contact";
		}

		return "contactThanks";
	}
}
