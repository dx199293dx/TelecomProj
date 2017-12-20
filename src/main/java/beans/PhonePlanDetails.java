package beans;

public class PhonePlanDetails {

	private int id;
	private String type;
	private String name;
	private String voice;
	private String text;
	private String data;
	private String price;
	public PhonePlanDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PhonePlanDetails(int id, String type, String name, String voice, String text, String data, String price) {
		super();
		this.id = id;
		this.type = type;
		this.name = name;
		this.voice = voice;
		this.text = text;
		this.data = data;
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
	@Override
	public String toString() {
		return "PhonePlanDetails [id=" + id + ", type=" + type + ", name=" + name + ", voice=" + voice + ", text="
				+ text + ", data=" + data + ", price=" + price + "]";
	}
	
}
