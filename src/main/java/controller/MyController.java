package controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import beans.Employee;
import service.Service;


@Controller
public class MyController {
	
	private Service myService;
	@Autowired(required=true)
	@Qualifier(value="service")
	public void setMyService(Service myService) {
		this.myService = myService;
	}
	@RequestMapping(value="/adminLogin")
	public ModelAndView employeeLogin(@RequestParam("userID") String userID,@RequestParam("password") String password){
		Employee e = myService.employeeLogin(userID, password);
		if(e.getId()==0) {
			return new ModelAndView("error");
		}else {
			return new ModelAndView("adminHomepage","employee",e);
		}
	}
	@RequestMapping(value="/adminSelection",params="createNewCustomer")
	public ModelAndView createNewService() {
		return new ModelAndView("createNewService","planList",myService.getPlanList());
		
	}
	
}
