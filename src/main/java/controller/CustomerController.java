package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {

	@RequestMapping(value = "/customer")
	public String customer() {
		System.out.println("customer Login ");
		return "customerHomepage";
	}
}
