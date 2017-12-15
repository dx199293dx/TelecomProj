package beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="issue")
public class Issue {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String type;
	private String subType;
	private String details;
	@Column(name="customer_id")
	private int cid;
	private String status;
	public Issue() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Issue(int id, String type, String subType, String details, int cid, String status) {
		super();
		this.id = id;
		this.type = type;
		this.subType = subType;
		this.details = details;
		this.cid = cid;
		this.status = status;
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
	public String getSubType() {
		return subType;
	}
	public void setSubType(String subType) {
		this.subType = subType;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Issue [id=" + id + ", type=" + type + ", subType=" + subType + ", details=" + details + ", cid=" + cid
				+ ", status=" + status + "]";
	}
	
}
