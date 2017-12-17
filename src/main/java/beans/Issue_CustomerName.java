package beans;

public class Issue_CustomerName {

	private int id;
	private String type;
	private String subType;
	private String details;
	private String customerName;
	private String status;
	public Issue_CustomerName() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Issue_CustomerName(int id, String type, String subType, String details, String customerName, String status) {
		super();
		this.id = id;
		this.type = type;
		this.subType = subType;
		this.details = details;
		this.customerName = customerName;
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
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

}
