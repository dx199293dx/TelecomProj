package beans;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="customer")
public class Customer implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@NotBlank(message="user ID cant be empty")
	private String userID;
	@Size(min=2, max=30, message="first name must have atleast 2 characters")
	private String firstName;
	@Size(min=1, max=30, message="last name must have atleast 2 characters")
	private String lastName;
//	@NotBlank(message="email cant be empty")
	@NotEmpty @Email
	private String email;
	@NotBlank(message="phone can't be empty")
	private String phone;
	@NotBlank(message="ssn can't be empty")
	private String ssn;
	@NotBlank(message="dob can't be empty")
	private String dob;
	@NotBlank(message="street can't be empty")
	private String street;
	@NotBlank(message="city can't be empty")
	private String city;
	@NotBlank(message="state can't be empty")
	private String state;
	@NotBlank @Min(5)
	private String zip;
	@NotBlank(message="password cant be empty")
	private String password;
	@NotBlank(message="service number must contain atleast 4 chars") @Min(4)
	private String servicenumber;
	
	
	public Customer() {
		// TODO Auto-generated constructor stub
	}
	
	public Customer(int id, String userID, String firstName, String lastName, String email, String phone, String ssn,
			String dob, String street, String city, String state, String zip, String password) {
		this.id = id;
		this.userID = userID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.ssn = ssn;
		this.dob = dob;
		this.street = street;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getSsn() {
		return ssn;
	}
	public void setSsn(String ssn) {
		this.ssn = ssn;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getServicenumber() {
		return servicenumber;
	}

	public void setServicenumber(String servicenumber) {
		this.servicenumber = servicenumber;
	}

	@Override
	public String toString() {
		return "Customer [id=" + id + ", userID=" + userID + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", email=" + email + ", phone=" + phone + ", ssn=" + ssn + ", dob=" + dob + ", street=" + street
				+ ", city=" + city + ", state=" + state + ", zip=" + zip + ", password=" + password + ", servicenumber="
				+ servicenumber + "]";
	}
	
}
