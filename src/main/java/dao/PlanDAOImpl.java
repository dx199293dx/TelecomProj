package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import beans.Plan;
import intf.PlanDAO;

public class PlanDAOImpl implements PlanDAO {
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Plan> getPlanList() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<Plan> planList = session.createQuery("from Plan").list();
		return planList;
	}

}
