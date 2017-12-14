package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import beans.CustomerPlan;

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

}
