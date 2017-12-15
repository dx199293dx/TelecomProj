package intf;

import java.util.List;

import beans.CardInfo;

public interface CardInfoDAO {
	public int addCardInfo(CardInfo ci);
	public List<CardInfo> getCardInfoList();
}
