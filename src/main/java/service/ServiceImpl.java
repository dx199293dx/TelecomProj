package service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import beans.Customer;
import beans.CustomerPlan;
import beans.Employee;
import beans.Issue;
import beans.Issue_CustomerName;
import beans.PhonePlanDetails;
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
		ArrayList<Issue> issueList = (ArrayList<Issue>)issueDao.getIssueList() ;
		ArrayList<Issue_CustomerName> list = new ArrayList<>(); 
		for(Issue i : issueList) {
			Issue_CustomerName issue = new Issue_CustomerName();
			issue.setId(i.getId());
			issue.setType(i.getType());
			issue.setSubType(i.getSubType());
			issue.setDetails(i.getDetails());
			issue.setStatus(i.getStatus());
			Customer c = customerDao.getCustomer(i.getCid());
			issue.setCustomerName(c.getFirstName()+" " + c.getLastName());
			list.add(issue);
		}
		return list;
	}

	@Override
	@Transactional
	public Issue_CustomerName getIssueByID(String id, List<Issue_CustomerName> issueList) {
		// TODO Auto-generated method stub
		for(Issue_CustomerName issue : issueList) {
			if(issue.getId()==Integer.parseInt(id)) {
				return issue;
			}
		}
		return null;
	}

	@Override
	@Transactional
	public List<Issue_CustomerName> modifyStatus(Issue_CustomerName issue) {
		// TODO Auto-generated method stub
		int id = issue.getId();
		Issue i = issueDao.getIssue(id);
		i.setStatus(issue.getStatus());
		issueDao.updateIssue(i);
		List<Issue_CustomerName> list = new ArrayList<>();
		list.add(issue);
		return list;
	}

	@Override
	public List<Issue_CustomerName> getIssueListByName(String name, List<Issue_CustomerName> list) {
		// TODO Auto-generated method stub
		ArrayList<Issue_CustomerName> newList = new ArrayList<>();
		for(Issue_CustomerName i : list) {
			if(i.getCustomerName().toLowerCase().equals(name.toLowerCase())) {
				newList.add(i);
			}
		}
		return newList;
	}

<<<<<<< HEAD
	@Override
	public PhonePlanDetails getMyPlan(int id) {
		// TODO Auto-generated method stub
		PhonePlanDetails ppd = new PhonePlanDetails();
		Customer c = customerDao.getCustomer(id);
		ppd.setFirstName(c.getFirstName());
		ppd.setLastName(c.getLastName());
		ppd.setNumber(c.getServicenumber());
		CustomerPlan cp = cpDao.getCustomerPlanByNumber(c.getServicenumber());
		ppd.setId(cp.getId());
		int pid = cp.getPid();
		Plan p = planDao.getPlan(pid);
		ppd.setType(p.getType());
		ppd.setPrice(p.getPrice());
		String[] detail = p.getDetails().split(",");
		ppd.setText(detail[0].substring(5));
		ppd.setVoice(detail[1].substring(6));
		ppd.setData(detail[2].substring(5));
		System.out.println(ppd);
		
		return ppd;
	}

=======
	
	// ------------------------------------CUSTOMER--------------------------------------------------- 
	@Override
	@Transactional
	public Customer custLogin(String userID, String password) {
		ArrayList<Customer> clist = (ArrayList<Customer>) customerDao.getCustomerList();
		for(Customer cust : clist) {
			if(cust.getUserID().equals(userID) && cust.getPassword().equals(password))
				return cust;
		}
		return new Customer();
	}

	@Override
	@Transactional
	public Customer registrationVal(String servicenumber) {
		ArrayList<Customer> calist = (ArrayList<Customer>) customerDao.getCustomerList();
		for(Customer c : calist) {
			if(c.getServicenumber().equals(servicenumber)) {
				return c;
			}
		}
		return new Customer();
	}
>>>>>>> customer1.0

	@Override
	@Transactional
	public void addCustomer(Customer c) {
		// TODO Auto-generated method stub
		customerDao.addCusteomer(c);
		
	}

	@Override
	@Transactional
	public void saveCustomer(Customer c) {
		// TODO Auto-generated method stub
//		System.out.println( c);
//		int id = c.getId();
//		Customer customer = customerDao.getCustomer(id);
//		customer.setUserID(c.getUserID());
//		customer.setPassword(c.getPassword());
//		customer.setEmail(c.getEmail());
//		customer.setPhone(c.getPhone());
//		customer.setSsn(c.getSsn());
//		customer.setStreet(c.getStreet());
//		customer.setCity(c.getCity());
//		customer.setState(c.getState());
//		customer.setZip(c.getZip());
		customerDao.updateCustomer(c);
		
	}

	

}
