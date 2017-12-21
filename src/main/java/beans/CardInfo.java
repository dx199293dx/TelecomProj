package beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="cardInfo")
public class CardInfo {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@NotNull(message="Card Type cannot be blank")
	private String type;
	@NotNull(message="Name cannot be blank")
	private String name;
	@NotNull(message="Choose the date")
	private String expireDate;
	@NotNull(message="Card Number cannot be blank")
	private String cardNo;
	@NotNull(message="Input the sercurity code")
	private String code;
	private int cid;
	public CardInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CardInfo(int id, String type, String name, String expireDate, String cardNo, String code, int cid) {
		super();
		this.id = id;
		this.type = type;
		this.name = name;
		this.expireDate = expireDate;
		this.cardNo = cardNo;
		this.code = code;
		this.cid = cid;
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
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	@Override
	public String toString() {
		return "CardInfo [id=" + id + ", type=" + type + ", name=" + name + ", expireDate=" + expireDate + ", cardNo="
				+ cardNo + ", code=" + code + ", cid=" + cid + "]";
	}
	
	
}
