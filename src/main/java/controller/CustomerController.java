package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import beans.Bill;
import beans.Customer;
import beans.PhonePlanDetails;


import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;


import intf.Service;

@Controller
public class CustomerController {
	@Autowired
	private Service service;

//	@RequestMapping(value = "/customer")
//	public String customer(HttpServletRequest request) {
//		Customer c = service.getCustomerList().get(0);//need to be changed, read the customer from seesion scope
//		request.getSession().setAttribute("customer", c);
//		System.out.println(c.getId());
//		return "customerHomepage";
//	}
	@RequestMapping(value="/getMyPlan")
	public ModelAndView getMyPlan(HttpServletRequest request) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		PhonePlanDetails ppd = service.getMyPlan(c.getId());	
		return new ModelAndView("myPlan", "myPlan", ppd);	
	}
	@RequestMapping(value="/planSelection")
	public ModelAndView changeCurrentPlan(Model model) {
		ArrayList<PhonePlanDetails> list = service.getPhonePlanList();
		return new ModelAndView("planSelection","phonePlanList",list);
	}
	@RequestMapping(value="/changePlan")
	public ModelAndView changePlan(HttpServletRequest request) {
		int pid = Integer.parseInt(request.getParameter("submit"));
		Customer c = (Customer) request.getSession().getAttribute("customer");
		PhonePlanDetails ppd = service.changePlan(pid, c);
		return new ModelAndView("myPlan", "myPlan", ppd);	
	}
	
	@RequestMapping(value="/getMyBill")
	public ModelAndView getMyBill(HttpServletRequest request) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		ArrayList<Bill> bill = (ArrayList<Bill>) service.getmyBill(c.getServicenumber());
		Bill currentBill = service.currentBill(bill);
		System.out.println(currentBill.getStartDate());
		return new ModelAndView("myBill", "myBill", bill);
	}
		
	@RequestMapping(value="customer")
	public String customer() {
		return "customerLogin";
	}
	
	@RequestMapping(value="/customerLogin")
	public ModelAndView custLogin(@RequestParam("userID") String userID, @RequestParam("password") String password, HttpServletRequest request) {
		Customer c = service.custLogin(userID, password);
		if(c.getId()==0) {
			return new ModelAndView("error");
		}else {
			request.getSession().setAttribute("customer", c);
			return new ModelAndView("customerHomepage");
		}
	}
	
	@RequestMapping(value="serNumber")
	public String serNumber() {
		
		return "registerCustomerValidate";
	}
	
	
	@RequestMapping(value="registerCustomerValidate")
	public ModelAndView regValidate(@RequestParam("servicenumber") String servicenumber,@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName, HttpServletRequest request, Model model) {
		Customer customer = service.registrationVal(servicenumber, firstName, lastName);
//		System.out.println(customer.getId());
		if(customer==null)//!customer.getServicenumber().equals(servicenumber)) 
		{
			return new ModelAndView("error");
		}else {
			request.getSession().setAttribute("customer", customer);
			return new ModelAndView("registerCustomer","newCustomer", customer);
		}
	}
	
	@RequestMapping(value="/registerCustomer")
	public ModelAndView modifyCustomer(Model model,@ModelAttribute("newCustomer") @Validated Customer c, BindingResult bindingResult, HttpServletRequest request) {
		Customer customer =(Customer) request.getSession().getAttribute("customer");
		int id = customer.getId();
		c.setId(id);
//		model.addAttribute("newCustomer", c);
		request.getSession().setAttribute("customer", c);
		if(bindingResult.hasErrors()) {
			return new ModelAndView("registerCustomer");
		}else {
			service.saveCustomer(c);
			return new ModelAndView("customerHomepage");
		}
		
	}
	
	@RequestMapping(value="/customerLogout")
	public ModelAndView custLogout(HttpServletRequest request){
		request.getSession().setAttribute("customer", null);
		return new ModelAndView("customerLogin");
	}

	@RequestMapping(value="/customerHomepage")
	public String customerHomepage() {
		return "customerHomepage";
	}
}
