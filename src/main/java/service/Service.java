package service;

import java.util.List;
import beans.Employee;
import beans.Plan;

public interface Service {
	public List<Employee> employeeList();
	public Employee employeeLogin(String userID, String password);
	public List<Plan> getPlanList();
}
