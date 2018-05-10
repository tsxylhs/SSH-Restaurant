package model;

import java.util.HashSet;
import java.util.Set;

public class Member {
	private Integer MId;
	private String username;
	private String password;
	private Set<Room> rooms = new HashSet<>();
	private Integer rank;

	public Integer getMId() {
		return MId;
	}

	public void setMId(Integer mId) {
		MId = mId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Set<Room> getRooms() {
		return rooms;
	}

	public void setRooms(Set<Room> rooms) {
		this.rooms = rooms;
	}

	public Integer getRank() {
		return rank;
	}

	public void setRank(Integer rank) {
		this.rank = rank;
	}

}
