package dao;

import org.hibernate.SessionFactory;

import intf.BillDAO;

public class BillDAOImpl implements BillDAO {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
