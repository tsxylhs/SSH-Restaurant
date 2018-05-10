package action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

import model.Room;
import service.adminService;
import service.roomService;

public class roomAction extends superAction implements ModelDriven<Room>, Preparable {
	private static final long serialVersionUID = 3L;

	private Integer RId;

	private Room model;

	private roomService roomService;

	private adminService adminService;

	// 查询所有房间
	public String query() {
		List<Room> room_list = roomService.queryAllRM();
		// 把list放入session
		if (room_list != null && room_list.size() > 0)
			session.setAttribute("rooms_list", room_list);
		return "query_success";
	}

	// 统计所有房间信息
	public String status() {
		// 已租房间总数,故障房间总数,剩余可用房间总数
		Integer rented = 0,trouble = 0,available = 0;
		List<Room> room_list = roomService.queryAllRM();
		for (Iterator<Room> it = room_list.iterator(); it.hasNext();) {
			String status = it.next().getStatus();
			if (status.equals("使用中"))
				rented++;
			else if (status.equals("故障"))
				trouble++;
			else if (status.equals("可预订"))
				available++;
		}
		session.setAttribute("rented", rented);
		session.setAttribute("trouble", trouble);
		session.setAttribute("available", available);
		return "status_success";
	}

	// 添加房间
	public String add() {
		adminService.addRoom(model);
		return "add_success";
	}

	public void prepareAdd() {
		model = new Room();
	}

	// 申请修改房间资料
	public String applyModify() {
		session.setAttribute("modify_room", model);
		// 申请成功，转到修改页面
		return "apply_success";
	}

	public void prepareApplyModify() {
		model = roomService.queryOneRM(RId);
	}

	// 真正修改房间资料
	public String editRoom() {
		adminService.editRoom(model);
		return "edit_success";
	}

	public void prepareEditRoom() {
		model = roomService.queryOneRM(RId);
	}

	@Override
	public Room getModel() {
		return model;
	}

	public void setAdminService(adminService adminService) {
		this.adminService = adminService;
	}

	public void setRoomService(roomService roomService) {
		this.roomService = roomService;
	}

	public void setRId(Integer rId) {
		RId = rId;
	}

	@Override
	public void prepare() throws Exception {

	}

}
