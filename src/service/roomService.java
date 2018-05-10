package service;

import java.util.List;
import dao.roomDao;
import model.Room;

public class roomService {

	private roomDao roomDao;

	// 查询所有房间
	public List<Room> queryAllRM() {
		return roomDao.queryAllRM();
	}

	// 查询房间
	public Room queryOneRM(Integer RId) {
		return roomDao.queryOneRM(RId);
	}

	// 更新房间信息
	public void update(Room room) {
		roomDao.update(room);
	}

	public void setRoomDao(roomDao roomDao) {
		this.roomDao = roomDao;
	}

}
