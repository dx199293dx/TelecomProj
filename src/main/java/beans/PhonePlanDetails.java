package beans;

public class PhonePlanDetails {

	private int id;
	private String firstName;
	private String lastName;
	private String type;
	private String voice;
	private String text;
	private String data;
	private String price;
	private String number;
	public PhonePlanDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PhonePlanDetails(int id, String firstName, String lastName, String type, String voice, String text,
			String data, String price, String number) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.type = type;
		this.voice = voice;
		this.text = text;
		this.data = data;
		this.price = price;
		this.number = number;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getVoice() {
		return voice;
	}
	public void setVoice(String voice) {
		this.voice = voice;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	@Override
	public String toString() {
		return "PhonePlanDetails [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", type=" + type
				+ ", voice=" + voice + ", text=" + text + ", data=" + data + ", price=" + price + ", number=" + number
				+ "]";
	}
	
}
