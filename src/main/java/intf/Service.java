package intf;

import java.util.List;

import beans.CustomerPlan;
import beans.Employee;
import beans.Plan;

public interface Service {
	public List<Employee> employeeList();
	public Employee employeeLogin(String userID, String password);
	public List<Plan> getPlanList();
	public void addCustomerPlan(CustomerPlan cp);
}
