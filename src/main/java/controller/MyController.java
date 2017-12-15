package controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import beans.CustomerPlan;
import beans.Employee;
import intf.Service;


@Controller
public class MyController {
	@Autowired
	private Service myService;
	@Autowired
	private Validator validator;

	@InitBinder("employee")
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}
	@RequestMapping(value="/adminLogin")
	public ModelAndView employeeLogin(@RequestParam("userID") String userID,@RequestParam("password") String password, 
			HttpServletRequest request){
		Employee e = myService.employeeLogin(userID, password);	
		if(e.getId()==0) {
			return new ModelAndView("error");
		}else {
			request.getSession().setAttribute("employee", e);
			return new ModelAndView("adminHomepage");
		}
	}
	
	@RequestMapping(value="/adminLogout")
	public ModelAndView employeeLogout(HttpServletRequest request){
		request.getSession().setAttribute("employee", null);
		return new ModelAndView("adminLogin");
	}
	@RequestMapping(value="/adminSelection",method=RequestMethod.POST)
	public ModelAndView adminSeletion(HttpServletRequest request, Model model) {
		String submit = request.getParameter("submit");
		System.out.println(submit);
		if(submit.equals("createNewCustomer")) {
			model.addAttribute("newCP",new CustomerPlan());
			return new ModelAndView("createNewService","planList",myService.getPlanList());
		}else if(submit.equals("addEmployee")) {
			model.addAttribute("employee", new Employee());
			return new ModelAndView("addAdmin");
		}else if(submit.equals("viewCustomers")) {
			request.getSession().setAttribute("customerList", myService.getCustomerList());
			return new ModelAndView("customerList");
		}
		return null;
	}
	@RequestMapping(value="/adminReg",method=RequestMethod.POST)
	public ModelAndView employeeReg(@Validated Employee e,BindingResult bindingResult){
		if(bindingResult.hasErrors()) {
			return new ModelAndView("addAdmin");
		}else{
			myService.addEmployee(e);
			return new ModelAndView("success");
		}
	}	
	@RequestMapping(value="/createNewCP",method=RequestMethod.POST)
	public String createNew(CustomerPlan cp) {//@ModelAttribute("newCP") 
		//we can change return type to get the new customer plan and display on the web
		myService.addCustomerPlan(cp);
		return "success";
	}
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/customerFilter", method=RequestMethod.POST)
	public String doFilter(@RequestParam("servicenumber") String servicenumber,HttpServletRequest request) {
		String submit = request.getParameter("submit");
		if(submit.equals("Search")) {
			request.getSession().setAttribute("customerList", myService.getCustomerListByNumber(servicenumber,(List)
					request.getSession().getAttribute("customerList")));
		}
		else if(submit.equals("All")) {
			request.getSession().setAttribute("customerList", myService.getCustomerList());
		}
		return "customerList";
	}
	@RequestMapping(value="/rtAdminHP")
	public ModelAndView returnToAdminHomePage(HttpServletRequest request) {
		Employee e = (Employee) request.getSession().getAttribute("employee");
		return new ModelAndView("adminHomepage","employee", e);
	}
	@RequestMapping(value="admin")
	public String admin() {
		return "adminLogin";
	}
//	@ModelAttribute("newCP")
//	public CustomerPlan createCustomerPlanModel() {
//		return new CustomerPlan();	
//	}
//	@ModelAttribute("employee")
//	public Employee createEmployeeModel() {
//		return new Employee();	
//	}
}
