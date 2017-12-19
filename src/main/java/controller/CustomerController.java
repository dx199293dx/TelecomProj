package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.Customer;
import beans.PhonePlanDetails;
import intf.Service;

@Controller
public class CustomerController {

	@Autowired
	private Service myService;

	@RequestMapping(value = "/customer")
	public String customer(HttpServletRequest request) {
		Customer c = myService.getCustomerList().get(0);//need to be changed, read the customer from seesion scope
		request.getSession().setAttribute("customer", c);
		System.out.println(c.getId());
		return "customerHomepage";
	}
	@RequestMapping(value="getMyPlan")
	@Transactional
	public ModelAndView getMyPlan(HttpServletRequest request) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		PhonePlanDetails ppd = myService.getMyPlan(c.getId());
		
		return new ModelAndView("myPlan", "myPlan", ppd);	
	}
}
