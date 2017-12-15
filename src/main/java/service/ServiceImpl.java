package service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import beans.Customer;
import beans.CustomerPlan;
import beans.Employee;
import beans.Plan;
import intf.CardInfoDAO;
import intf.CustomerDAO;
import intf.CustomerPlanDAO;
import intf.EmployeeDAO;
import intf.IssueDAO;
import intf.PlanDAO;
import intf.Service;


public class ServiceImpl implements Service {
	private EmployeeDAO employeeDao;
	private CustomerDAO customerDao;
	private PlanDAO planDao;
	private CustomerPlanDAO cpDao; 
	private CardInfoDAO ciDao; 
	private IssueDAO iDao; 

	public void setiDao(IssueDAO iDao) {
		this.iDao = iDao;
	}

	public void setCiDao(CardInfoDAO ciDao) {
		this.ciDao = ciDao;
	}

	public void setCpDao(CustomerPlanDAO cpDao) {
		this.cpDao = cpDao;
	}

	public void setEmployeeDao(EmployeeDAO employeeDao) {
		this.employeeDao = employeeDao;
	}

	public void setCustomerDao(CustomerDAO customerDao) {
		this.customerDao = customerDao;
	}

	public void setPlanDao(PlanDAO planDao) {
		this.planDao = planDao;
	}

	@Override
	@Transactional
	public List<Employee> employeeList() {
		// TODO Auto-generated method stub
		return employeeDao.getEmployeeList();
	}

	@Override
	@Transactional
	public Employee employeeLogin(String userID, String password) {
		// TODO Auto-generated method stub
		ArrayList<Employee> list = (ArrayList<Employee>) employeeDao.getEmployeeList();
		System.out.println("here");
		for(Employee e : list) {
			if(e.getUserID().equals(userID) && e.getPassword().equals(password))
				return e;
		}
		return new Employee();
	}
	
	@Override
	@Transactional
	public List<Plan> getPlanList(){
		return planDao.getPlanList();
	}

	@Override
	@Transactional
	public void addCustomerPlan(CustomerPlan cp) {
		// TODO Auto-generated method stub
		Customer c = new Customer();
		c.setFirstName(cp.getFirstName());
		c.setLastName(cp.getLastName());
		c.setServicenumber(cp.getNumber());
		int cid = customerDao.addCusteomer(c);
		cp.setCid(cid);
		cpDao.addCustomerPlan(cp);
	}
	

}
