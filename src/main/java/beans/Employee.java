package beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name="employee")
public class Employee {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@Size(min=2, max=30,message="Name must contain at least 2 characters")
	private String name;
	@NotBlank(message="User ID cannot be blank")
	private String userID;
	@NotBlank(message="Password cannot be blank")
	private String password;
	
	public Employee() {
		super();

	}

	public Employee(int id, String name, String userID, String password) {
		super();
		this.id = id;
		this.name = name;
		this.userID = userID;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", userID=" + userID + ", password=" + password + "]";
	}

}
