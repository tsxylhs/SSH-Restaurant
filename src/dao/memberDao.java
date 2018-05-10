package dao;

import java.util.ArrayList;
import java.util.List;

import model.Member;
import model.Room;

public class memberDao extends baseDao {

	// 预订，未支付
	public void bookRM(Integer MId, Integer RId) {
		Member member = (Member) getSession().get(Member.class, MId);
		Room room = (Room) getSession().get(Room.class, RId);
		member.getRooms().add(room);
		room.setMember(member);
		getSession().update(member);
		getSession().update(room);
	}

	// 退房
	public void checkOut(Integer RId) {
		Room room = (Room) getSession().get(Room.class, RId);
		Member originalMB = (Member) getSession().get(Member.class, room.getMember().getMId());
		originalMB.getRooms().remove(room);
		room.setMember(null);
		// 每次设置member时，自动更新status
		room.setStatus("可预订");
		getSession().update(originalMB);
		getSession().update(room);
	}

	// 办卡
	public void buyCard(Integer MId, Integer rank) {
		Member member = (Member) getSession().get(Member.class, MId);
		member.setRank(rank);
		getSession().update(member);
	}

	// 付钱
	public void pay(Integer MId, Integer RId) {
		Member member = (Member) getSession().get(Member.class, MId);
		Room room = (Room) getSession().get(Room.class, RId);
		member.getRooms().add(room);
		room.setMember(member);
		room.setStatus("使用中");
		getSession().update(member);
		getSession().update(room);
	}

	// 查询所有预订房间
	public List<Room> queryAllRM(Integer MId) {
		Member member = (Member) getSession().get(Member.class, MId);
		List<Room> roomList = null;
		roomList = new ArrayList<Room>(member.getRooms());
		return roomList;
	}

	// 注册
	public void signIn(Member member) {
		// 普通会员
		member.setRank(4);
		getSession().save(member);
	}

	// 查询单个会员
	public Member queryMB(Integer MId) {
		return (Member) getSession().get(Member.class, MId);
	}

	// 修改会员信息
	public void update(Member member) {
		getSession().update(member);
	}

}
