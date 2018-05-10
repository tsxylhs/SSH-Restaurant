package action;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import model.Admin;
import model.Member;
import service.adminService;
import service.memberService;

public class adminAction extends superAction implements ModelDriven<Admin>, Preparable {

	private static final long serialVersionUID = 1L;

	public static Integer AdminId;

	public Integer MId;

	public String password;

	private Admin model;
	
	private Member member;

	private adminService adminService;

	private memberService memberService;

	// 查询所有会员
	public String queryMB() {
		session.setAttribute("members_list", adminService.queryAll());
		return "query_success";
	}

	// 删除会员
	public String delete() {
		adminService.delete(MId);
		return "delete_success";
	}

	@Override
	public Admin getModel() {
		return model;
	}

	public void setMId(Integer mId) {
		MId = mId;
	}

	public void setAdminService(adminService adminService) {
		this.adminService = adminService;
	}

	public void setMemberService(memberService memberService) {
		this.memberService = memberService;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public void prepare() throws Exception {
	}
}
