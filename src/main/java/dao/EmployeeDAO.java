package dao;

import java.util.List;

import beans.Employee;


public interface EmployeeDAO{
	public void addStudent(Employee s);
	public List<Employee> getEmployeeList();
}
