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
import beans.Issue;
import beans.Issue_CustomerName;
import intf.Service;


@Controller
public class CustomerController {
	@Autowired
	private Service myService;
//	@Autowired
//	@Qualifier("employeeValidator")
//	private Validator validator;
//
//	@InitBinder("employee")
//	private void initBinder(WebDataBinder binder) {
//		binder.setValidator(validator);
//	}
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
	
	@RequestMapping(value="/viewCustomers")
	public ModelAndView viewCustomers(HttpServletRequest request, Model model) {
		request.getSession().setAttribute("customerList", myService.getCustomerList());
		return new ModelAndView("customerList");

	}
	@RequestMapping(value="/viewIssues")
	public ModelAndView viewIssues(HttpServletRequest request, Model model) {
		request.getSession().setAttribute("issueList", myService.getIssueList());
		return new ModelAndView("issueList");

	}
	@RequestMapping(value="viewIssueDeatils",method=RequestMethod.POST)
	public ModelAndView viewIssueDeatils(HttpServletRequest request){
		return new ModelAndView("issueDetails","issue",myService.getIssueByID(request.getParameter("submit"), (List<Issue_CustomerName>)request.getSession().getAttribute("issueList")));
		
	}
	@RequestMapping(value="/adminReg",method=RequestMethod.POST)
	public ModelAndView employeeReg(@ModelAttribute("newAdmin") @Validated Employee e, BindingResult bindingResult){
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
	public String doCustomerFilter(@RequestParam("servicenumber") String servicenumber,HttpServletRequest request) {
		String submit = request.getParameter("submit");
		if(submit.equals("Search") && !servicenumber.equals("")) {
			request.getSession().setAttribute("customerList", myService.getCustomerListByNumber(servicenumber,(List)
					request.getSession().getAttribute("customerList")));
		}
		else if(submit.equals("All")) {
			request.getSession().setAttribute("customerList", myService.getCustomerList());
		}
		return "customerList";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/issueFilter", method=RequestMethod.POST)
	public String doIssueFilter(@RequestParam("name") String name,HttpServletRequest request) {
		String submit = request.getParameter("submit");
		if(submit.equals("Search") && !name.equals("")) {
			request.getSession().setAttribute("issueList", myService.getIssueListByName(name,(List)
					request.getSession().getAttribute("issueList")));
		}
		else if(submit.equals("All")) {
			request.getSession().setAttribute("issueList", myService.getIssueList());
		}
		return "issueList";
	}
	@RequestMapping(value="modifyStatus", method=RequestMethod.POST)
	public ModelAndView modifyStatus(@ModelAttribute Issue_CustomerName issue, HttpServletRequest request) {
		String submit = request.getParameter("submit");
		if(submit.equals("modify")) {
			request.getSession().setAttribute("issueList", myService.modifyStatus(issue));			
		}
		return new ModelAndView("issueList");
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
