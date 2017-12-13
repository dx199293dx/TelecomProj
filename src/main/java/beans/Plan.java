package beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="plan")
public class Plan {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String type;
	private String name;
	private String details;
	private String price;
		
	public Plan() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Plan(int id, String type, String name, String details, String price) {
		super();
		this.id = id;
		this.type = type;
		this.name = name;
		this.details = details;
		this.price = price;
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


	public String getDetails() {
		return details;
	}


	public void setDetails(String details) {
		this.details = details;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}
	
}
