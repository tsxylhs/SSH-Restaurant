package action;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import model.Member;
import model.Room;
import service.memberService;
import service.roomService;

public class memberAction extends superAction implements ModelDriven<Member>, Preparable {
	private static final long serialVersionUID = 2L;

	private Integer RId,MId;

	public static Integer loginMBId;

	private Member model;

	private memberService memberService;

	private roomService roomService;

	// 申请订房
	public String applyPay() {
		session.setAttribute("apply_room", roomService.queryOneRM(RId));
		return "apply_pay_success";
	}

	// 确认支付
	public String pay() {
		memberService.pay(loginMBId, RId);
		return "pay_success";
	}

	// 查询我预订的房间
	public String queryMe() {
		if (loginAction.status == 1)
			session.setAttribute("my_room_list", memberService.queryAllRM(loginMBId));
		return "query_success";
	}

	// 退房
	public String checkout() {
		memberService.checkOut(RId);
		return "checkout_success";
	}

	public void setRId(Integer rId) {
		RId = rId;
	}

	// 注册
	public String signIn() {
		session.setAttribute("signIn", "true");
		memberService.signIn(model);
		return "signIn_success";
	}

	public void prepareSignIn() {
		model = new Member();
	}

	//查单个
	public String query() {
		session.setAttribute("member", memberService.queryMB(MId));
		return "queryMB_success";
	}
	
	//修改会员信息
	public String update() {
		memberService.update(model);
		return "update_success";
	}
	
	public void prepareUpdate() {
		model = memberService.queryMB(MId);
	}

	//房间报修
	public String report() {
		Room room = roomService.queryOneRM(RId);
		room.setStatus("故障");
		roomService.update(room);
		return "report_success";
	}
	
	@Override
	public Member getModel() {
		return model;
	}

	public void setMemberService(memberService memberService) {
		this.memberService = memberService;
	}

	public void setRoomService(roomService roomService) {
		this.roomService = roomService;
	}

	public void setMId(Integer mId) {
		MId = mId;
	}

	@Override
	public void prepare() throws Exception {
	}

}
