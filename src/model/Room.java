package model;

public class Room {
	private Integer RId;
	private Integer roomNumber;
	private String status;
	private Member member;
	private double price;

	public Integer getRId() {
		return RId;
	}

	public void setRId(Integer rId) {
		RId = rId;
	}

	public Integer getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(Integer roomNumber) {
		this.roomNumber = roomNumber;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Room() {
	}
}
