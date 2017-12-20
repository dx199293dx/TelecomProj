package beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cardInfo")
public class CardInfo {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String type;
	private String name;
	private String expireDate;
	private String cardNo;
	private String code;
	public CardInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CardInfo(int id, String type, String name, String expireDate, String cardNo,
			String code) {
		
		//abc
		super();
		this.id = id;
		this.type = type;
		this.name = name;
		this.expireDate = expireDate;
		this.cardNo = cardNo;
		this.code = code;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(String expireDate) {
		this.expireDate = expireDate;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	@Override
	public String toString() {
		return "CardInfo [id=" + id + ", type=" + type + ", name=" + name + ", expireDate=" + expireDate + ", cardNo="
				+ cardNo + ", code=" + code + "]";
	}

	
}
