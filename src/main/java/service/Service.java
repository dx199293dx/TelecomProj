package service;

import java.util.List;
import beans.Employee;

public interface Service {
	public List<Employee> employeeList();
	public Employee employeeLogin(String userID, String password);
}
