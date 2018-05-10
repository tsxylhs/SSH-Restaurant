package action;

import java.util.List;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import model.Admin;
import service.loginService;

public class loginAction extends superAction implements ModelDriven<Admin>,Preparable{

	private static final long serialVersionUID = 1L;
	
	public static Integer status;
	
	private Admin model;
	
	private loginService loginService;

	// 登录
	public String login() {
		List<Integer> status_Id = loginService.login(model);
		Integer userstatus = status_Id.get(0);
		session.setAttribute("username", request.getParameter("username"));
		switch (userstatus) {
		// 会员
		case 1:
			memberAction.loginMBId=status_Id.get(1);
			session.setAttribute("status", "1");
			this.status=1;
			return "login_success";
		// 管理员
		case 2:
			adminAction.AdminId=status_Id.get(1);
			session.setAttribute("status", "2");
			this.status=2;
			return "login_success";
		// 登录失败
		case 3:
			return "login_failure";
		}
		return "";
	}
	
	public void prepareLogin() {
		model=new Admin();
	}

	public String logout() {
		return "logout_success";
	}

	@Override
	public Admin getModel() {
		return model;
	}
	
	public void setLoginService(loginService loginService) {
		this.loginService = loginService;
	}

	@Override
	public void prepare() throws Exception {
	}

}
