package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import beans.Customer;
import beans.CustomerFieldCanBeNull;
import intf.CustomerDAO;

public class CustomerDAOImpl implements CustomerDAO {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public int addCusteomer(CustomerFieldCanBeNull c) {
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

	@Override
	public Customer getCustomer(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return (Customer) session.get(Customer.class, id);
	}

	@Override
	public void updateCustomer(Customer customer) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);
	}

}
