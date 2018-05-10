package service;

import java.util.List;
import dao.adminDao;
import model.Member;
import model.Room;

public class adminService {
	private adminDao adminDao;

	// 添加房间
	public void addRoom(Room room) {
		adminDao.addRoom(room);
	}

	// 修改房间资料
	public void editRoom(Room room) {
		adminDao.editRoom(room);
	}

	// 查询所有会员
	public List<Member> queryAll() {
		return adminDao.queryAll();
	}
	
	// 删除会员
	public void delete(Integer MId) {
		adminDao.delete(MId);
	}
	
	//修改会员密码
	public void changeMP(Integer MId,String password)
	{
		adminDao.changeMP(MId,password);
	}

	public void setAdminDao(adminDao adminDao) {
		this.adminDao = adminDao;
	}

}
