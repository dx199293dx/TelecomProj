package service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import beans.Customer;
import beans.CustomerPlan;
import beans.Employee;
import beans.Issue;
import beans.Issue_CustomerName;
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
	private IssueDAO issueDao; 


	public IssueDAO getIssueDao() {
		return issueDao;
	}

	public void setIssueDao(IssueDAO issueDao) {
		this.issueDao = issueDao;
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

	@Override
	@Transactional
	public List<Customer> getCustomerList() {
		// TODO Auto-generated method stub
		return customerDao.getCustomerList();
	}

	@Override
	@Transactional
	public void addEmployee(Employee e) {
		// TODO Auto-generated method stub
		employeeDao.addEmployee(e);

	}

	@Override
	public List<Customer> getCustomerListByNumber(String servicenumber, List<Customer> list) {
		// TODO Auto-generated method stub
		ArrayList<Customer> newList = new ArrayList<>();
		for(Customer c : list) {
			if(c.getServicenumber().equals(servicenumber)) {
				newList.add(c);
			}
		}
		return newList;
	}

	@Override
	@Transactional
	public List<Issue_CustomerName> getIssueList() {
		// TODO Auto-generated method stub
		ArrayList<Issue> issueList = (ArrayList<Issue>) issueDao.getIssueList();
		ArrayList<Issue_CustomerName> list = new ArrayList<>(); 
		for(Issue i : issueList) {
			Issue_CustomerName issue = new Issue_CustomerName();
			issue.setId(i.getId());
			issue.setType(i.getType());
			issue.setSubType(i.getSubType());
			issue.setDetails(i.getDetails());
			issue.setStatus(i.getStatus());
			Customer c = customerDao.getCustemer(i.getCid());
			issue.setCustomerName(c.getFirstName()+" " + c.getLastName());
			list.add(issue);
		}
		return list;
	}

	@Override
	public Issue_CustomerName getIssueByID(String id, List<Issue_CustomerName> issueList) {
		// TODO Auto-generated method stub
		for(Issue_CustomerName issue : issueList) {
			if(issue.getId()==Integer.parseInt(id)) {
				return issue;
			}
		}
		return null;
	}



}
