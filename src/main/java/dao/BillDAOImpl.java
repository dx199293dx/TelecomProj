package dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import beans.Bill;
import intf.BillDAO;

public class BillDAOImpl implements BillDAO {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Bill> getCustomerBillList() {
		
		Session session=sessionFactory.getCurrentSession();
		List<Bill> billList = session.createQuery("from Bill").list();
		return billList;
	}

}
