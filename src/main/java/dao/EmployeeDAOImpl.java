package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import beans.Employee;



public class EmployeeDAOImpl implements EmployeeDAO {
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addStudent(Employee s) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.persist(s);
	}

	@Override
	public List<Employee> getEmployeeList() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<Employee> employeeList = session.createQuery("from Employee").list();
		return employeeList;
	}

}
