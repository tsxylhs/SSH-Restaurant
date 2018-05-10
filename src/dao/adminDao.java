package dao;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import model.Member;
import model.Room;

public class adminDao extends baseDao {
	// 添加房间
	public void addRoom(Room room) {
		getSession().save(room);
	}

	// 修改房间资料
	public void editRoom(Room room) {
		getSession().update(room);
	}

	// 查询所有会员
	public List<Member> queryAll() {
		List<Member> list = getSession().createQuery("from Member").list();
		return list;
	}

	// 删除会员
	public void delete(Integer MId) {
		Member member = (Member) getSession().get(Member.class, MId);
		Set<Room> roomSet = member.getRooms();
		Iterator<Room> it = roomSet.iterator();
		// 把该用户预订的所有房间置为可预订状态
		while (it.hasNext()) {
			Room room = it.next();
			room.setMember(null);
			getSession().update(room);
		}
		member.getRooms().clear();
		getSession().delete(member);
	}

	// 修改会员密码
	public void changeMP(Integer MId, String password) {
		Member member = (Member) getSession().get(Member.class, MId);
		member.setPassword(password);
	}

}
