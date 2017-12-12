package dao;

import java.util.List;

import beans.Employee;


public interface EmployeeDAO{
	public void addEmployee(Employee s);
	public List<Employee> getEmployeeList();
}
