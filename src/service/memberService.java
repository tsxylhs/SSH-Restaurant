package service;

import java.util.List;
import dao.memberDao;
import model.Member;
import model.Room;

public class memberService {
	private memberDao memberDao;

	// 预订，未支付
	public void bookRM(Integer MId, Integer RId) {
		memberDao.bookRM(MId, RId);
	}

	// 退房
	public void checkOut(Integer RId) {
		memberDao.checkOut(RId);
	}

	// 办卡
	public void buyCard(Integer MId, Integer rank) {
		memberDao.buyCard(MId, rank);
	}

	// 付钱
	public void pay(Integer MId, Integer RId) {
		memberDao.pay(MId, RId);
	}

	// 查询所有预订房间
	public List<Room> queryAllRM(Integer MId) {
		return memberDao.queryAllRM(MId);
	}

	// 注册
	public void signIn(Member member) {
		memberDao.signIn(member);
	}

	// 查询单个会员
	public Member queryMB(Integer MId) {
		return memberDao.queryMB(MId);
	}
	
	//修改会员信息
	public void update(Member member)
	{
		memberDao.update(member);
	}

	public void setMemberDao(memberDao memberDao) {
		this.memberDao = memberDao;
	}

}
