package service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import beans.Employee;
import dao.CustomerDAO;
import dao.EmployeeDAO;


public class ServiceImpl implements Service {
	private EmployeeDAO employeeDao;
	private CustomerDAO customerDao;

	public void setEmployeeDao(EmployeeDAO employeeDao) {
		this.employeeDao = employeeDao;
	}

	public void setCustomerDao(CustomerDAO customerDao) {
		this.customerDao = customerDao;
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

}
