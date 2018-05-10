package service;

import java.util.List;
import dao.loginDao;
import model.Admin;

public class loginService {

	private loginDao loginDao;

	// 检测用户类型
	public List<Integer> login(Admin admin) {
		return loginDao.login(admin);
	}

	public void setLoginDao(loginDao loginDao) {
		this.loginDao = loginDao;
	}

}
