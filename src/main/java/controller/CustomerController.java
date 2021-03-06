package controller;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import beans.Bill;
import beans.CardInfo;
import beans.Customer;
import beans.Issue;
import beans.PhonePlanDetails;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import intf.Service;

@Controller
public class CustomerController {
	@Autowired
	private Service service;


	@RequestMapping(value = "/getMyPlan")
	public ModelAndView getMyPlan(HttpServletRequest request) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		PhonePlanDetails ppd = service.getMyPlan(c.getId());
		return new ModelAndView("myPlan", "myPlan", ppd);
	}

	@RequestMapping(value = "/planSelection")
	public ModelAndView changeCurrentPlan(Model model) {
		ArrayList<PhonePlanDetails> list = service.getPhonePlanList();
		return new ModelAndView("planSelection", "phonePlanList", list);
	}

	@RequestMapping(value = "/changePlan")
	public ModelAndView changePlan(HttpServletRequest request) {
		int pid = Integer.parseInt(request.getParameter("submit"));
		Customer c = (Customer) request.getSession().getAttribute("customer");
		PhonePlanDetails ppd = service.changePlan(pid, c);
		return new ModelAndView("myPlan", "myPlan", ppd);
	}

	@RequestMapping(value = "/getMyBill")
	public ModelAndView getMyBill(HttpServletRequest request, Model model) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		ArrayList<Bill> bill = (ArrayList<Bill>) service.getmyBill(c.getServicenumber());

		return new ModelAndView("myBill", "myBill", bill);
	}

	@RequestMapping(value = "customer")
	public String customer() {
		return "customerLogin";
	}

	@RequestMapping(value = "/customerLogin")
	public ModelAndView custLogin(@RequestParam("userID") String userID, @RequestParam("password") String password,
			HttpServletRequest request) throws ParseException {
		Customer c = service.custLogin(userID, password);
		if (c.getId() == 0) {
			return new ModelAndView("customerLogin","success","no");
		} else {
			request.getSession().setAttribute("customer", c);
			ArrayList<Bill> bill = (ArrayList<Bill>) service.getmyBill(c.getServicenumber());
			Bill currentBill = service.currentBill(bill);
			request.getSession().setAttribute("currBill", currentBill);
			String remDays = service.remainingDays(currentBill.getDueDate());
			request.getSession().setAttribute("remainingDays", remDays);
			PhonePlanDetails ppd = service.getMyPlan(c.getId());
			request.getSession().setAttribute("myPlan", ppd);
			return new ModelAndView("customerHomepage");
		}
	}

	@RequestMapping(value = "serNumber")
	public String serNumber() {

		return "registerCustomerValidate";
	}

	@RequestMapping(value = "registerCustomerValidate")
	public ModelAndView regValidate(@RequestParam("servicenumber") String servicenumber,
			@RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName,
			HttpServletRequest request, Model model) {
		String s = request.getParameter("submit");
		if(s.equals("submit")) {
			Customer customer = service.registrationVal(servicenumber, firstName, lastName);
			// System.out.println(customer.getId());
			if (customer == null)// !customer.getServicenumber().equals(servicenumber))
			{
				return new ModelAndView("registerCustomerValidate","success","no");
			} else {
				request.getSession().setAttribute("customer", customer);
				return new ModelAndView("registerCustomer", "newCustomer", customer);
			}
		}
		else {
			return new ModelAndView("redirect:/customer.spring");
		}
		
	}

	@RequestMapping(value = "/registerCustomer")
	public ModelAndView modifyCustomer(Model model, @ModelAttribute("newCustomer") @Validated Customer c,
			BindingResult bindingResult, HttpServletRequest request) {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		int id = customer.getId();
		c.setId(id);
		// model.addAttribute("newCustomer", c);
		request.getSession().setAttribute("customer", c);
		if (bindingResult.hasErrors()) {
			return new ModelAndView("registerCustomer");
		} else {
			service.saveCustomer(c);
			return new ModelAndView("customerHomepage");
		}

	}

	@RequestMapping(value = "/customerLogout")
	public ModelAndView custLogout(HttpServletRequest request) {
		request.getSession().setAttribute("customer", null);
		return new ModelAndView("customerLogin");
	}

	@RequestMapping(value = "/customerHomepage")
	public String customerHomepage() {
		return "customerHomepage";
	}

	@RequestMapping(value="/paymentInfo")
	public ModelAndView paymentInfo(HttpServletRequest request,RedirectAttributes ra,ModelMap model) {

		model.addAttribute(model);

		Customer c = (Customer) request.getSession().getAttribute("customer");
		ArrayList<CardInfo> cardList = service.getCardList(c.getId());
		return new ModelAndView("payment", "cardList", cardList);
	}

	@RequestMapping(value="/pay")
	public String pay(@RequestParam("card-type") String type,@RequestParam("card-holder-name") String name, 
			@RequestParam("card-number") String cardNo,@RequestParam("expiry-month") String month,@RequestParam("expiry-year") String year,
			@RequestParam("cvv") String code,HttpServletRequest request,RedirectAttributes ra) {


		Customer c = (Customer) request.getSession().getAttribute("customer");
		int cid = c.getId();
		if (service.saveCard(type, name, cardNo, month, year, code, cid)) {
			Bill bill = (Bill) request.getSession().getAttribute("currBill");
			String success = service.pay(bill);

			ra.addFlashAttribute("success",success);
			return "redirect:/paymentInfo.spring";
		}
		return "payError";

	}

	@RequestMapping(value = "/myAccount")
	public String displayAccount() {

		return "customerAccount";
	}

	@RequestMapping(value = "/editAccount")
	public String editAccount() {
		return "editAccountDetails";
	}

	@RequestMapping(value="/changeAccount", method=RequestMethod.POST)
	public String changeAccount(@RequestParam("email") String email, @RequestParam("phone") String phone, @RequestParam("street") String street,
			@RequestParam("city") String city, @RequestParam("state") String state, @RequestParam("zip") String zip, HttpServletRequest request) {
		System.out.println(email);
		Customer c = (Customer) request.getSession().getAttribute("customer");
		service.modifyCustomer(c, email, phone, street, city, state, zip);
		return "redirect:/myAccount.spring";
		
	}
	
	
	@RequestMapping(value="/fillIssueForm")
	public ModelAndView fillIssueForm() {
		return new ModelAndView("issueForm","issue",new Issue());
	}
	
	@RequestMapping(value="/submitIssue")
	public ModelAndView submitIssue(@RequestParam("type") String type, @RequestParam("subtype") String subtype,@RequestParam("message") String message,
									HttpServletRequest request) {
		Customer c = (Customer) request.getSession().getAttribute("customer");
		String success = service.submitIssue(c,type,subtype,message);
		return new ModelAndView("issueForm","success",success);
		
	}
}
