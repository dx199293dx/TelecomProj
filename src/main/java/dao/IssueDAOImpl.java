package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import beans.Issue;
import intf.IssueDAO;

public class IssueDAOImpl implements IssueDAO {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public int addIssue(Issue i) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		int id = (int) session.save(i);
		return id;
	}

	@Override
	public void updateIssue(Issue i) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(i);
	}

	@Override
	public List<Issue> getIssueList() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<Issue> issueList = session.createQuery("from Issue").list();
		return issueList;
	}

}
