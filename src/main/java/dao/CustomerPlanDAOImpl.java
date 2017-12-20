package dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import beans.CustomerPlan;
import intf.CustomerPlanDAO;

public class CustomerPlanDAOImpl implements CustomerPlanDAO {

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void addCustomerPlan(CustomerPlan cp) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.persist(cp);
	}
	@Override
	public CustomerPlan getCustomerPlanByNumber(String number) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<CustomerPlan> list = session.createQuery("from CustomerPlan").list();
		for(CustomerPlan cp : list) {
			if(cp.getNumber().equals(number))
				return cp;
		}
		return new CustomerPlan();
	}
	@Override
	public void update(CustomerPlan cp) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(cp);
	}

}
