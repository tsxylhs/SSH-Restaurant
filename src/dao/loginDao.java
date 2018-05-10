package dao;

import java.util.ArrayList;
import java.util.List;
import model.Admin;
import model.Member;

public class loginDao extends baseDao {

	// 检测用户类型
	public List<Integer> login(Admin admin) {
		List<Integer> status_Id = new ArrayList<Integer>();
		// 会员对应status=1
		List<Member> member_list = getSession().createQuery("from Member where username =? and password=?")
				.setString(0, admin.getUsername()).setString(1, admin.getPassword()).list();
		if (!member_list.isEmpty()) {
			status_Id.add(1);
			status_Id.add(member_list.get(0).getMId());
		} else {
			// 管理员对应status=2
			List<Admin> admin_list = getSession().createQuery("from Admin where username =? and password=?")
					.setString(0, admin.getUsername()).setString(1, admin.getPassword()).list();
			if (!admin_list.isEmpty()) {
				status_Id.add(2);
				status_Id.add(admin_list.get(0).getAId());
			} else
				status_Id.add(3);// status=3代表登录失败
		}
		return status_Id;
	}
}
