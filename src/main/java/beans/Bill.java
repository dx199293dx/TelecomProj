package beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bill")
public class Bill {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String servicenumber;
	private String startDate;
	private String endDate;
	private String dueDate;
	private String amount;
	private String paid;
	public Bill() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Bill(int id, String servicenumber, String startDate, String endDate, String dueDate, String amount,
			String paid) {
		super();
		this.id = id;
		this.servicenumber = servicenumber;
		this.startDate = startDate;
		this.endDate = endDate;
		this.dueDate = dueDate;
		this.amount = amount;
		this.paid = paid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getServicenumber() {
		return servicenumber;
	}
	public void setServicenumber(String servicenumber) {
		this.servicenumber = servicenumber;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getPaid() {
		return paid;
	}
	public void setPaid(String paid) {
		this.paid = paid;
	}
	@Override
	public String toString() {
		return "Bill [id=" + id + ", servicenumber=" + servicenumber + ", startDate=" + startDate + ", endDate="
				+ endDate + ", dueDate=" + dueDate + ", amount=" + amount + ", paid=" + paid + "]";
	}
	
	
}
