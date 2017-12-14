package beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cus_plan")
public class CustomerPlan {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private int cid;
	private int pid;
	private String firstName;
	private String lastName;
	private String number;
	public CustomerPlan(int id, int cid, int pid, String firstName, String lastName, String number) {
		super();
		this.id = id;
		this.cid = cid;
		this.pid = pid;
		this.firstName = firstName;
		this.lastName = lastName;
		this.number = number;
	}
	public CustomerPlan() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "CustomerPlan [id=" + id + ", cid=" + cid + ", pid=" + pid + ", firstName=" + firstName + ", lastName="
				+ lastName + ", number=" + number + "]";
	}
	
	
}
