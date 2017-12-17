package intf;

import java.util.List;

import beans.Customer;
import beans.CustomerPlan;
import beans.Employee;
import beans.Issue_CustomerName;
import beans.Plan;

public interface Service {
	public Employee employeeLogin(String userID, String password);
	public void addEmployee(Employee e);
	public void addCustomerPlan(CustomerPlan cp);
	public List<Employee> employeeList();	
	public List<Plan> getPlanList();	
	public List<Customer> getCustomerList();
	public List<Customer> getCustomerListByNumber(String servicenumber, List<Customer> list);
	public List<Issue_CustomerName> getIssueList();
	public Issue_CustomerName getIssueByID(String id, List<Issue_CustomerName> issueList);
}
