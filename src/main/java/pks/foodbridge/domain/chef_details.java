package pks.foodbridge.domain;

public class chef_details {
	private Integer id;
	private String kitchen_name;
	private Integer ratings;
	private String kitchen_picture;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getKitchen_name() {
		return kitchen_name;
	}
	public void setKitchen_name(String kitchen_name) {
		this.kitchen_name = kitchen_name;
	}
	public Integer getRatings() {
		return ratings;
	}
	public void setRatings(Integer ratings) {
		this.ratings = ratings;
	}
	public String getKitchen_picture() {
		return kitchen_picture;
	}
	public void setKitchen_picture(String kitchen_picture) {
		this.kitchen_picture = kitchen_picture;
	}
	

}
