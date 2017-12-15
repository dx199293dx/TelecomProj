package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import beans.CardInfo;
import intf.CardInfoDAO;

public class CardInfoDAOImpl implements CardInfoDAO {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public int addCardInfo(CardInfo ci) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		int id = (int) session.save(ci);
		return id;
	}

	@Override
	public List<CardInfo> getCardInfoList() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<CardInfo> cardInfoList = session.createQuery("from CardInfo").list();
		return cardInfoList;
	}

}
