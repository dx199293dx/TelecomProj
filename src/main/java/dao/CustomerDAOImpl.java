package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import beans.Customer;
import intf.CustomerDAO;

public class CustomerDAOImpl implements CustomerDAO {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public int addCusteomer(Customer c) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		int id = (int) session.save(c);
		return id;
	}

	@Override
	public List<Customer> getCustomerList() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<Customer> customerList = session.createQuery("from Customer").list();
		return customerList;
	}

}
