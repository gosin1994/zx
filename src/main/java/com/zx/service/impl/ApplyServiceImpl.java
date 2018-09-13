package com.zx.service.impl;

import java.util.Date;
import java.util.List;

import javax.servlet.jsp.tagext.TryCatchFinally;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.common.page.Page;
import com.zx.dao.ApplyDao;
import com.zx.dao.CommissionDao;
import com.zx.dao.CommissionRuleDao;
import com.zx.dao.MemberDao;
import com.zx.dao.OrderDao;
import com.zx.entity.Apply;
import com.zx.entity.Commission;
import com.zx.entity.CommissionRule;
import com.zx.entity.Member;
import com.zx.entity.Order;
import com.zx.entity.User;
import com.zx.service.ApplyService;
import com.zx.service.MemberService;

@Service("applyService")
public class ApplyServiceImpl implements ApplyService {
	
	

	
	@Autowired
	private ApplyDao applyDao;
	
	@Autowired
	private OrderDao orderDao;
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private CommissionDao commissionDao;
	
	@Autowired
	private CommissionRuleDao commissionRuleDao;
	
	@Autowired
	private MemberService memberService;
	
	
	@Override
	public List<Apply> selectAll(Apply query, Page<Apply> page) {
		
		List<Apply> allApplies = applyDao.selectAll(query, page);
		System.out.println("applyServiceImpl打印selectAll数据："+allApplies);
		System.out.println("allApplies[0]========"+allApplies.get(0));
		return allApplies;
	}
	
	
	
	@Override
	public void sign(Integer id, User user) {
		Apply apply = applyDao.selectByPrimaryKey(id);
		Member directMember = memberDao.selectByPrimaryKey(apply.getMemberId());
		Date now = new Date();
		
		apply.setState(1);//已签约
		apply.setUpdateTime(now);
		
		applyDao.updateByPrimaryKey(apply);
		
		
		
		
		
		Order order = new Order();
		
		//order.setAmount(apply.getIsMember()==1?2800:3000);
		order.setAmount(apply.getIsMember()==1?2480:2680);
		//System.out.println("总佣金：>>>>>>>>>>>>>>>>>>>>>>>"+order.getAmount());
		order.setApplyId(id);
		
		order.setCreateTime(now);
		order.setCustomerId(apply.getCustomerId());
		order.setCustomerName(apply.getName());
		order.setMemberId(apply.getMemberId());
		order.setMemberName(apply.getMemberName());
		order.setPhone(apply.getPhone());
		order.setUpdateTime(now);
		//order.setUserId(user.getId());
		//order.setUserName(user.getName());
		
		
		orderDao.insert(order);
		
		
		
		
		int totalCommissionAmount = 0;
		
		int directCommissionAmount = 0;
		
		
		
		CommissionRule directCommissionRule = commissionRuleDao.selectByLevel(directMember.getLevel());
		
		totalCommissionAmount+=directCommissionRule.getAmount();
		directCommissionAmount = directCommissionRule.getAmount();
		
		
		
		
		Commission directCommission = new Commission();
		
		directCommission.setAmount(directCommissionAmount);
		directCommission.setCreateTime(now);
		directCommission.setCustomerId(order.getCustomerId());
		directCommission.setCustomerName(order.getCustomerName());
		directCommission.setMemberId(directMember.getId());
		directCommission.setMemberName(directMember.getName());
		directCommission.setOrderId(order.getId());
		directCommission.setState(0);
		directCommission.setUpdateTime(now);
		directCommission.setBankName(directMember.getBankName());
		directCommission.setBankAccountName(directMember.getBankAccountName());
		directCommission.setBankAccountNo(directMember.getBankAccountNo());
		directCommission.setAlipayNo(directMember.getAlipayNo());
		
		commissionDao.insert(directCommission);
		
		//处理上线会员佣金
		totalCommissionAmount = dealParentCommission(order,directMember,totalCommissionAmount);
		
		order.setCommissionAmount(totalCommissionAmount);
		orderDao.updateByPrimaryKey(order);
		
		
		//从下至上所有人成功订单数加一
		dealMemberLevel(directMember);
	}

	
	
	private int dealParentCommission(Order order, Member childMember,int totalCommissionAmount){
		if(childMember.getPid() == 0 || totalCommissionAmount>= 1300){
			return totalCommissionAmount;
		}
		
		Member parentMember = memberDao.selectByPrimaryKey(childMember.getPid());
		if(parentMember.getLevel() > childMember.getLevel()){//1 200 2 400 3 600 4 800 5 1000 6 1200 7 1300
			
			CommissionRule parentCommissionRule = commissionRuleDao.selectByLevel(parentMember.getLevel());
			CommissionRule childCommissionRule = commissionRuleDao.selectByLevel(childMember.getLevel());
			
			int parentCommissionAmount =(parentCommissionRule.getAmount()-childCommissionRule.getAmount());//佣金差
			
			totalCommissionAmount += parentCommissionAmount;
			
			Commission parentCommission = new Commission();
			
			parentCommission.setAmount(parentCommissionAmount);
			parentCommission.setCreateTime(order.getCreateTime());
			parentCommission.setCustomerId(order.getCustomerId());
			parentCommission.setCustomerName(order.getCustomerName());
			parentCommission.setMemberId(parentMember.getId());
			parentCommission.setMemberName(parentMember.getName());
			parentCommission.setOrderId(order.getId());
			parentCommission.setState(0);
			parentCommission.setUpdateTime(order.getCreateTime());
			parentCommission.setBankName(parentMember.getBankName());
			parentCommission.setBankAccountName(parentMember.getBankAccountName());
			parentCommission.setBankAccountNo(parentMember.getBankAccountNo());
			parentCommission.setAlipayNo(parentMember.getAlipayNo());
			
			commissionDao.insert(parentCommission);
		}
		
		
		return dealParentCommission(order,parentMember,totalCommissionAmount);
	}
	
	
	private void dealMemberLevel(Member childMember){
		
		
		int orderCount = childMember.getOrderCount();
		orderCount++;
		
		int newLevel = 1;
		
		if(orderCount==1){
			newLevel = 2;
		}else if(orderCount>=2 && orderCount<4){
			newLevel = 3;
		}else if(orderCount>=4 && orderCount<8){
			newLevel = 4;
		}else if(orderCount>=8 && orderCount<15){
			newLevel = 5;
		}else if(orderCount>=15 && orderCount<20){
			newLevel = 6;
		}else if(orderCount>=20){
			newLevel = 7;
		}
		
		childMember.setOrderCount(orderCount);
		childMember.setLevel(newLevel);
		childMember.setUpdateTime(new Date());
		
		memberDao.updateByPrimaryKey(childMember);
		
		
		if(childMember.getPid() ==0 ){
			return;
		}
		
		Member parentMember = memberDao.selectByPrimaryKey(childMember.getPid());
		dealMemberLevel(parentMember);
	}
	
	
	
	
	
	
	
	
	
	
	
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insert(Apply record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertSelective(Apply record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Apply selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateByPrimaryKeySelective(Apply record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKey(Apply record) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public List<Apply> selectChildApply(Apply query, Page<Apply> page,
			String phone) {
		
		try {
			Member member = memberDao.selectByPhone(phone);
			System.out.println(member.toString());
			query.setRootMemberId(member.getId());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return applyDao.selectAll(query, page);
		
	
	}



	
	
}
