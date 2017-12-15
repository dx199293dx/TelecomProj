package intf;

import java.util.List;

import beans.Customer;
import beans.CustomerPlan;
import beans.Employee;
import beans.Plan;

public interface Service {
	public Employee employeeLogin(String userID, String password);
	public void addEmployee(Employee e);
	public void addCustomerPlan(CustomerPlan cp);
	public List<Employee> employeeList();	
	public List<Plan> getPlanList();	
	public List<Customer> getCustomerList();
	public List getCustomerListByNumber(String servicenumber, List<Customer> list);
}
