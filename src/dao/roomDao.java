package dao;

import java.util.List;

import model.Room;

public class roomDao extends baseDao {

	// 查询所有房间
	public List<Room> queryAllRM() {
		return getSession().createQuery("from Room").list();
	}

	// 查询房间
	public Room queryOneRM(Integer RId) {
		return (Room) getSession().get(Room.class, RId);
	}

	// 更新房间信息
	public void update(Room room) {
		getSession().update(room);
	}

}
