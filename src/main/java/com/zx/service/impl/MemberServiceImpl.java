package com.zx.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.tagext.TryCatchFinally;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.ContextLoader;

import com.zx.common.Constant;
import com.zx.common.page.Page;
import com.zx.common.util.QRCodeUtil;
import com.zx.dao.ApplyDao;
import com.zx.dao.CommissionDao;
import com.zx.dao.CustomerDao;
import com.zx.dao.MemberDao;
import com.zx.entity.Commission;
import com.zx.entity.Customer;
import com.zx.entity.Member;
import com.zx.entity.Node;
import com.zx.entity.User;
import com.zx.service.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private CustomerDao customerDao;
	
	@Autowired
	private ApplyDao applyDao;
	
	@Autowired
	private CommissionDao commissionDao;
	
	
	public void apply(Member member) {
		// TODO Auto-generated method stub
		
		
		member.setCreateTime(new Date());
		member.setLevel(1);
		member.setOrderCount(0);
		member.setUpdateTime(member.getCreateTime());
		
		memberDao.insert(member);
		
		
		//<mvc:resources mapping="/img/**" location="/resources/img/"/> 
		
		String name = member.getName();
		if(name.length()>2){
			name = name.substring(0, 1)+" * "+name.substring(2);
		}else {
			name = name.substring(0, 1)+" * ";
		}
		String text = name;
		//System.out.println(">>>>>>>>>>>>>>>>>>>>>>>"+name);
		//String text = "推荐人："+name;
		//String text = " ";
		
		String fileName = member.getPhone()+".png";
		String qrcodeUrl = "/zx/img/qrcode/"+member.getPhone()+".jpg";
		//http://www.szhukou.com.cn/zx/o/customer/apply?mid=2
		
		//二维码跳转到测评页面
		//String message = "http://www.szhukou.com.cn/zx/o/customer/apply?mid=44";
		String message = "http://www.szhukou.com.cn/zx/o/customer/apply?mid="+member.getId();
		//二维码跳转到首页
		//String message = "http://www.szhukou.com.cn/zx/o/customer?mid="+member.getId();
		
		//String message = "http://119.29.95.129/zx/o/customer?mid="+member.getId();
		
		//String message = "http://www.yibaishangwu.com:9090/zx/o/customer?mid="+member.getId();
		//String message = "http://192.168.31.52:8080/zx/o/customer?mid="+member.getId();
		
		//String message = "http://192.168.31.52:8080/zx/o/customer";
		
		String imgFolderDir = ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath("/") 
				+"/resources/img/qrcode";
		fileName = imgFolderDir+"/" + fileName;
		
		try {
			QRCodeUtil.generateQRCode(fileName, message, imgFolderDir, text);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		member.setQrcodeUrl(qrcodeUrl);
		
		
		//set rootMermber
		if(member.getPid()==0){
			member.setRootMemberId(member.getId());
			member.setRootMemberName(member.getName());
		}else {
			Member parentMember = memberDao.selectByPrimaryKey(member.getPid());
			member.setRootMemberId(parentMember.getRootMemberId());
			member.setRootMemberName(parentMember.getRootMemberName());
		}
		
		
		memberDao.updateByPrimaryKey(member);
		
		
		
		if(member.getCustomerId()!=0){
			
			Customer customer = customerDao.selectByPrimaryKey(member.getCustomerId());
			customer.setIsMember(1);
			customer.setMemberId(member.getId());
			customerDao.updateByPrimaryKey(customer);
			
			applyDao.updateMemberStateByCustomerId(customer.getId());
			
		}else {//先办理入户，再办理会员，手机号关联
			Customer customer = customerDao.selectByPhone(member.getPhone());
			
			if(customer!=null){
				
				customer.setIsMember(1);
				customer.setMemberId(member.getId());
				customerDao.updateByPrimaryKey(customer);
				
				applyDao.updateMemberStateByCustomerId(customer.getId());
			}
		}
		
	}
	

	
	//=========================================================================	
	/**
	 * 替换旧的二维码
	 */
	@Test
	public void markQrcode() {
		int[] idArr =new int[]{44,45,46,47,48,49,50,51,52,53,54,55,56,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267};
		String[] nameArr = new String[]{"林海培","庄庆华","张优韶","张汉青","罗艳" ,"林丹虹","黄文河","刘志杰","庄广潜","罗兴云","区善仁","朱红飞","王利涛","熊义" ,"陈进任","陈妙梅","杨双阁","王铎惠","江嘉宇","陈文辉","伍陶陶","文金梅","李龙梅","刘嘉莉","郑晓彤","罗焕群","薛礼富","今年" ,"卢重岐","林基刚","古翠兰","夏存存","曾巧" ,"刘燕玲","王利颜","小陆" ,"王小颜","林牡丹","曾卡珍","杜其中","李娟" ,"魏子厚","孟亚洁","罗小方","罗群香","黄志坚","林平丹","黄生" ,"罗先生","隋越" ,"程秋英","曹旭珊","刘梅芳","梅林" ,"张海达","陈水进","梁水凤","黄碧丽","杨肖然","林丽丽","王超" ,"王超" ,"韩晓春","杨翠文","付开花","郭丹" ,"孙小雪","程秋英","王丽琼","党莹莹","彭萍" ,"梁旭真","温清华","余卫华","姜磊" ,"方志军","方志军","王利涛","李琳" ,"张秀菊","刘德锋","张克锋","白婷" ,"黄水彬","梁旭彩","黄东华","程丽萍","万行利","柯翔" ,"陆冬艳","齐灵童","吴晓兰","小慧" ,"蔡辉立","赵岩" ,"李元飞","孙会" ,"林婷" ,"黄艳" ,"钟特贤","龙丽银","张国强","张长伟","郑亚燕","黄耀星","冯悦红","邓帆" ,"罗龙" ,"杨利娟","蒋先军","徐开洪","黄敏娟","张艺雄","俎晶晶","梁素霞","张幽梦","唐懋" ,"杨玥" ,"白小寒","林楚芬","况生" ,"测试" ,"林冰" ,"况生" ,"测试" ,"钟静文","童培英","邸思木雅","陈妙如","谭惠武","黄素丽","梁思乐","罗伟" ,"王卫丹","刘瑞峰","刘曼君","林治璇","王秋涛","你佬板","杨静然","王大包","mmmm","aaaa","曹操" ,"刘备" ,"33" ,"黄俊飞","刘银柱","段远峰","方韩华","李金跃","徐浩量","冯强中","陈钊坤","苏春梅","陆蕙" ,"刘玉龙","徐文" ,"詹桂丽","555","林锦荣","汪燕" ,"潘欢" ,"李传龙","彭星" ,"看看" ,"张三" ,"常铮" ,"龚鑫" ,"孙嘉潞","陈彩莲","苗萍" ,"龚鑫test","李晓" ,"欧洪春","梁杰" ,"James","互推" ,"方芳" ,"张媛" ,"封捷" ,"朱樑" ,"谢龙" ,"郑蔚青","马继红","李丹丹","张驰" ,"付敏" ,"肖飞" ,"于志鹏","李文强","高凌飞","孙小明","柴庆" ,"龚大大","王赵华","赵珍" ,"吴勇胜","杨金丽","罗彩华","杨娟娟","卢清华","黄","1215","张瑞" ,"张晓飞","蔡满新","曹清" ,"林莉华","曾柳婷","雷姐" ,"5555","130333","郭倩君","杨婷" ,"测试" ,"测试2","测试22","测试啊","彭益鸿","杨瑞胜"};
		String[] phoneArr = new String[]{"13823151990","15017909813","13751665865","18027198457","13925246321","13715391359","13631311370","13590306219","18312463464","15715238203","15323458697","17704028693","18148761965","13510145681","13544088856","15815531500","18126492009","13302314878","13632823307","13798564893","13510175090","13925225935","13751324525","13631564144","18718795930","13809888830","18678000852","11113311111","18928443341","15815554158","13530794616","13631593552","13787750033","13302917670","18218816881","15323469536","13302314978","13544042835","18813920918","13632700939","13682318218","13826589058","18128825895","13760433546","13554899130","13699863040","13430849313","18682192154","18899358866","15013806215","18707555376","18814221059","13510019774","13189770372","13631690959","15013698426","13662665384","15018403838","18588260467","13823809539","13928466869","13928468869","13510449817","13510859235","13510268176","15013507992","13828862892","13510083290","13189785487","13603025080","13823389916","13480155633","13428978628","13510173053","18988793485","13537739050","13510937651","18126096070","18188627921","13828836246","13760801719","13684999168","13751149693","15899860796","13480167769","18128822181","13670042881","18682273859","18306662590","13538285035","18241887263","15875567225","18589072207","15819116442","18575691101","15914178122","18135708666","13713940704","13714817291","14923815808","13428988623","18675513651","13168708490","13714308481","13828735979","13798335075","15818600551","13570807385","13316935835","13501577655","13554795941","15814612082","15220270132","18688726681","15889450765","18682200236","13715257643","13510451226","13418500387","15999560939","15813706181","13333333333","18820240560","15813706182","13333333331","13632553024","13538259887","17888811997","13430740195","18307557839","13418679074","13542093829","13725049503","15012666968","18655059100","13652401441","13530797603","15817220346","15018723389","17666000879","15766257785","18922784171","13333333338","15012345671","15018729831","15018729832","13798340660","13926551959","18666227707","13590328973","13923813924","13902659323","13723705190","13923806770","13923718214","15112336890","17665208122","13924662503","13714343707","13333335555","13922887402","15815596725","15016231267","18520867661","13766305365","13333334441","15811456111","18525582580","13631787532","15143206661","13798573025","13641464009","13631787533","18576616369","15919859774","15814449876","18820296818","18503007861","13717018669","13620914500","13242033155","13823311614","18025364818","13028852230","13530939458","15811823680","15179215555","18823311340","13480604100","13138172199","18298459096","14704431483","18620689027","13798718003","18523325456","18166160750","18810350013","18718699278","15820491869","13554701605","15013518028","13554945854","13410213073","13546485246","13418842932","13716962779","13534016683","17807655579","13826685206","18680348161","13809866552","13266666996","13013332333","18589040881","13590178412","13631787534","14799996666","14785236952","14785233655","18007370146","13590598871"};
		
		for (int i = 0; i < 300; i++) {
			
			String name = nameArr[i];
			if(name.length()>2){
				name = name.substring(0, 1)+" * "+name.substring(2);
			}else {
				name = name.substring(0, 1)+" * ";
			}
			String text = name;
			
			String imgFolderDir = "D:/qrcode";
			
			int memberId = idArr[i];
			String message = "http://www.szhukou.com.cn/zx/o/customer/apply?mid="+memberId;
			
			String number = phoneArr[i];
			//System.out.println("D:/qrcode/"+number+".jpg");
			
			try {
				QRCodeUtil.generateQRCode("D:/qrcode/"+number+".png", message,imgFolderDir,text);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
		
		
	}
	//=========================================================================	
	
	
	
	
	
	
	
	
	@Override
	public List<Member> selectAll(Member query, Page<Member> page) {
		return memberDao.selectAll(query, page);
	}

	
	
	@Override
	public Map<String, Object> getInfo(String name, String phone) {
		Map<String, Object> info = new HashMap<String, Object>();
		Member member = memberDao.selectByPhone(phone);
		
		
		
		if(member!=null && member.getName().equals(name)){
			
			List<Commission> commissions = commissionDao.selectByMemberId(member.getId());
			info.put("member", member);
			info.put("commissions", commissions);
			
		}
		
		return info;
	}
	
	@Override
	public List<Commission> getCommissionList(Integer memberId, Page<Commission> page) {
		// TODO Auto-generated method stub
		return commissionDao.selectByMemberId(memberId);
	}
	

	@Override
	public void persist(Member member) {
		
		Member db_member = memberDao.selectByPrimaryKey(member.getId());
		
		if(db_member.getLevel()!=member.getLevel()){//级别变动
			int newLevel = member.getLevel();
			int orderCount = 0;
			if(newLevel==1){
				orderCount = 0;
			}else if(newLevel==2){
				orderCount = 1;
			}else if(newLevel==3){
				orderCount = 2;
			}else if(newLevel==4){
				orderCount = 4;
			}else if(newLevel==5){
				orderCount = 8;
			}else if(newLevel==6){
				orderCount = 15;
			}else if(newLevel==7){
				orderCount = 20;
			}
			db_member.setLevel(newLevel);
			db_member.setOrderCount(orderCount);
		}
		
		
		db_member.setAlipayNo(member.getAlipayNo());
		db_member.setBankName(member.getBankName());
		db_member.setBankAccountName(member.getBankAccountName());
		db_member.setBankAccountNo(member.getBankAccountNo());
		db_member.setUpdateTime(new Date());

		memberDao.updateByPrimaryKey(db_member);
	}
	
	
	
	
	
	
	

	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insert(Member record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertSelective(Member record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Member selectByPrimaryKey(Integer id) {
		return memberDao.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(Member record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateByPrimaryKey(Member record) {
		// TODO Auto-generated method stub
		return 0;
	}




	public static void main(String[] args) {
		String message = "http://www.szhukou.com.cn/zx/o/customer";
		//String message = "http://192.168.1.106:8080/zx/o/customer";
		//String message = "http://192.168.31.52:8080/zx/o/customer";

		try {
			QRCodeUtil.generateQRCode("D:/test/zxdir/init.png", message,"D:/test/zxdir","初始二维码");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}



	@Override
	public List<Node> buildChildMemberTree(String phone) {

		List<Node> memberData = new ArrayList<Node>();
		Map<Integer, Node> nodeMap = new HashMap<Integer, Node>();
		
		List<Member> parentMembers = new ArrayList<Member>();
		List<Member> memberPool = memberDao.selectAll(new Member(), null);
		
		if(phone==null){//admin
			
			for(Member root : memberPool){
				if(root.getPid()==0){//root member
					parentMembers.add(root);
					
					Node rootNode = new Node();
					rootNode.setId(root.getId());
					rootNode.setText(buildNodeText(root));
					nodeMap.put(root.getId(), rootNode);
					memberData.add(rootNode);
				}
			}
			
		}else {
			Member root = memberDao.selectByPhone(phone);
			parentMembers.add(root);
			
			Node rootNode = new Node();
			rootNode.setId(root.getId());
			rootNode.setText(buildNodeText(root));
			nodeMap.put(root.getId(), rootNode);
			memberData.add(rootNode);
		}
		
		
		findChildrenNode(parentMembers,memberPool,nodeMap);
		
		
		return memberData;
	}
	
	
	


	private void findChildrenNode(List<Member> parentMembers, List<Member> memberPool, Map<Integer, Node> nodeMap){
		
		
		
		if(parentMembers.isEmpty()){
			return;
		}
		
		List<Member> childrenMembers = new ArrayList<Member>();
		
		for(Member parent : parentMembers){
			
			Node parentNode =  nodeMap.get(parent.getId());
			
			for(Member child : memberPool){
				
				if(parent.getId()==child.getPid()){
					
					childrenMembers.add(child);
					
					Node childNode = new Node();
					childNode.setId(child.getId());
					childNode.setText(buildNodeText(child));
					
					nodeMap.put(child.getId(), childNode);
					parentNode.addNode(childNode);
				}
			}
		}
		
		findChildrenNode(childrenMembers,memberPool,nodeMap);
		
	}
	
	
	private String buildNodeText(Member member){
		StringBuffer text = new StringBuffer();
		
		text.append(member.getName());
		text.append(" ");
		text.append(bulidLevelName(member));
		text.append(" (");
		text.append(member.getOrderCount());
		text.append("，");
		text.append(member.getTotalAmount());
		text.append(")");
		return text.toString();
	}



	private String bulidLevelName(Member member) {
		int level = member.getLevel();
		String levelName = "";
		if(level==1){
			levelName="会员";
		}else if(level==2){
			levelName="高级会员";
		}else if(level==3){
			levelName="黄金会员";
		}else if(level==4){
			levelName="白金会员";
		}else if(level==5){
			levelName="渠道商";
		}else if(level==6){
			levelName="高级代理商";
		}else if(level==7){
			levelName="高级合伙人";
		}
		return levelName;
	}



	@Override
	public boolean isPhoneExist(String phone) {
		Member dbmember = memberDao.selectByPhone(phone);
		return dbmember!=null;
	}



	@Override
	public List<Member> selectChildMembers(Member query, Page<Member> page, String phone) {
		if(phone==null){//admin
			return memberDao.selectAll(query, page);
		}else {
			
			List<Member> childMembers = buildChildMember(phone);
			
			
			Collections.sort(childMembers);
			
			
			
			page.setTotalRecord(childMembers.size());
			if(page.getPageNo() < 1 ){
				page.setPageNo(1);
			}
			if(page.getPageNo() > page.getTotalPage()){
				page.setPageNo(page.getTotalPage());
			}
			
			
			int start = (page.getPageNo()-1)*page.getPageSize();
			
			int end = (page.getPageNo()*page.getPageSize()) > childMembers.size() ? childMembers.size() : page.getPageNo()*page.getPageSize();
			
			return childMembers.subList(start, end);
		}
		
	}



	public List<Member> buildChildMember(String phone) {
		
		List<Member> result = new ArrayList<Member>();
		List<Member> parentMembers = new ArrayList<Member>();
		List<Member> memberPool = memberDao.selectAll(new Member(), null);
		Member root = memberDao.selectByPhone(phone);
		
		parentMembers.add(root);
		result.add(root);
		
		findChildren(parentMembers,memberPool,result);
		
		return result;
	}
	
	
	private void findChildren(List<Member> parentMembers, List<Member> memberPool, List<Member> result){
		
		
		
		if(parentMembers.isEmpty()){
			return;
		}
		
		List<Member> childrenMembers = new ArrayList<Member>();
		
		for(Member parent : parentMembers){
			
			for(Member child : memberPool){
				try {
					if(parent.getId()==child.getPid()){
						
						childrenMembers.add(child);
						
						result.add(child);
					}
				} catch (Exception e) {
					// TODO: handle exception
				}
				
				
			}
		}
		
		findChildren(childrenMembers,memberPool,result);
		
	}



	@Override
	public String login(HttpServletRequest request, String phone, String name) {
		Member loginMember = memberDao.selectByPhone(phone);
		
		
		if(loginMember != null){
			
			if(loginMember.getName().equals(name)
					){
				HttpSession session = request.getSession();
				session.setAttribute(Constant.LOGIN_MEMBER, loginMember);
				return "success";
			}else {
				return "incorrect";
			}
			
		}
		return "incorrect";
	}



	@Override
	public void logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute(Constant.LOGIN_MEMBER);
		session.invalidate();
	}


	
}
/*
|  44 | 林海培          | 13823151990 |
|  45 | 庄庆华          | 15017909813 |
|  46 | 张优韶          | 13751665865 |
|  47 | 张汉青          | 18027198457 |
|  48 | 罗艳              | 13925246321 |
|  49 | 林丹虹          | 13715391359 |
|  50 | 黄文河          | 13631311370 |
|  51 | 刘志杰          | 13590306219 |
|  52 | 庄广潜          | 18312463464 |
|  53 | 罗兴云          | 15715238203 |
|  54 | 区善仁          | 15323458697 |
|  55 | 朱红飞          | 17704028693 |
|  56 | 王利涛          | 18148761965 |
|  58 | 熊义              | 13510145681 |
|  59 | 陈进任          | 13544088856 |
|  60 | 陈妙梅          | 15815531500 |
|  61 | 杨双阁          | 18126492009 |
|  62 | 王铎惠          | 13302314878 |
|  63 | 江嘉宇          | 13632823307 |
|  64 | 陈文辉          | 13798564893 |
|  65 | 伍陶陶          | 13510175090 |
|  66 | 文金梅          | 13925225935 |
|  67 | 李龙梅          | 13751324525 |
|  68 | 刘嘉莉          | 13631564144 |
|  69 | 郑晓彤          | 18718795930 |
|  70 | 罗焕群          | 13809888830 |
|  71 | 薛礼富          | 18678000852 |
|  72 | 今年             | 11113311111 |
|  73 | 卢重岐          | 18928443341 |
|  74 | 林基刚          | 15815554158 |
|  75 | 古翠兰          | 13530794616 |
|  76 | 夏存存          | 13631593552 |
|  77 | 曾巧              | 13787750033 |
|  78 | 刘燕玲          | 13302917670 |
|  79 | 王利颜          | 18218816881 |
|  80 | 小陆              | 15323469536 |
|  81 | 王小颜          | 13302314978 |
|  82 | 林牡丹          | 13544042835 |
|  83 | 曾卡珍          | 18813920918 |
|  84 | 杜其中          | 13632700939 |
|  85 | 李娟              | 13682318218 |
|  86 | 魏子厚          | 13826589058 |
|  87 | 孟亚洁          | 18128825895 |
|  88 | 罗小方          | 13760433546 |
|  89 | 罗群香          | 13554899130 |
|  90 | 黄志坚          | 13699863040 |
|  91 | 林平丹          | 13430849313 |
|  92 | 黄生             | 18682192154 |
|  94 | 罗先生          | 18899358866 |
|  95 | 隋越             | 15013806215 |
|  96 | 程秋英          | 18707555376 |
|  97 | 曹旭珊          | 18814221059 |
|  98 | 刘梅芳          | 13510019774 |
|  99 | 梅林             | 13189770372 |
| 100 | 张海达          | 13631690959 |
| 101 | 陈水进          | 15013698426 |
| 102 | 梁水凤          | 13662665384 |
| 103 | 黄碧丽          | 15018403838 |
| 104 | 杨肖然          | 18588260467 |
| 105 | 林丽丽          | 13823809539 |
| 106 | 王超             | 13928466869 |
| 107 | 王超            | 13928468869 |
| 108 | 韩晓春          | 13510449817 |
| 109 | 杨翠文          | 13510859235 |
| 110 | 付开花          | 13510268176 |
| 111 | 郭丹          | 15013507992 |
| 112 | 孙小雪          | 13828862892 |
| 113 | 程秋英          | 13510083290 |
| 114 | 王丽琼          | 13189785487 |
| 115 | 党莹莹          | 13603025080 |
| 116 | 彭萍          | 13823389916 |
| 117 | 梁旭真          | 13480155633 |
| 118 | 温清华          | 13428978628 |
| 119 | 余卫华          | 13510173053 |
| 120 | 姜磊          | 18988793485 |
| 121 | 方志军          | 13537739050 |
| 122 | 方志军          | 13510937651 |
| 123 | 王利涛          | 18126096070 |
| 124 | 李琳          | 18188627921 |
| 125 | 张秀菊          | 13828836246 |
| 126 | 刘德锋          | 13760801719 |
| 127 | 张克锋          | 13684999168 |
| 128 | 白婷          | 13751149693 |
| 129 | 黄水彬          | 15899860796 |
| 130 | 梁旭彩          | 13480167769 |
| 131 | 黄东华          | 18128822181 |
| 132 | 程丽萍          | 13670042881 |
| 133 | 万行利          | 18682273859 |
| 134 | 柯翔          | 18306662590 |
| 135 | 陆冬艳          | 13538285035 |
| 136 | 齐灵童          | 18241887263 |
| 137 | 吴晓兰          | 15875567225 |
| 138 | 小慧          | 18589072207 |
| 139 | 蔡辉立          | 15819116442 |
| 140 | 赵岩          | 18575691101 |
| 141 | 李元飞          | 15914178122 |
| 142 | 孙会          | 18135708666 |
| 143 | 林婷          | 13713940704 |
| 144 | 黄艳          | 13714817291 |
| 145 | 钟特贤          | 14923815808 |
| 146 | 龙丽银          | 13428988623 |
| 147 | 张国强          | 18675513651 |
| 148 | 张长伟          | 13168708490 |
| 149 | 郑亚燕          | 13714308481 |
| 150 | 黄耀星          | 13828735979 |
| 151 | 冯悦红          | 13798335075 |
| 152 | 邓帆          | 15818600551 |
| 153 | 罗龙          | 13570807385 |
| 154 | 杨利娟          | 13316935835 |
| 155 | 蒋先军          | 13501577655 |
| 156 | 徐开洪          | 13554795941 |
| 157 | 黄敏娟          | 15814612082 |
| 158 | 张艺雄          | 15220270132 |
| 159 | 俎晶晶          | 18688726681 |
| 160 | 梁素霞          | 15889450765 |
| 161 | 张幽梦          | 18682200236 |
| 162 | 唐懋          | 13715257643 |
| 163 | 杨玥          | 13510451226 |
| 164 | 白小寒          | 13418500387 |
| 165 | 林楚芬          | 15999560939 |
| 166 | 况生          | 15813706181 |
| 168 | 测试          | 13333333333 |
| 169 | 林冰          | 18820240560 |
| 170 | 况生          | 15813706182 |
| 171 | 测试          | 13333333331 |
| 172 | 钟静文          | 13632553024 |
| 173 | 童培英          | 13538259887 |
| 174 | 邸思木雅        | 17888811997 |
| 175 | 陈妙如          | 13430740195 |
| 176 | 谭惠武          | 18307557839 |
| 177 | 黄素丽          | 13418679074 |
| 178 | 梁思乐          | 13542093829 |
| 179 | 罗伟          | 13725049503 |
| 180 | 王卫丹          | 15012666968 |
| 181 | 刘瑞峰          | 18655059100 |
| 182 | 刘曼君          | 13652401441 |
| 183 | 林治璇          | 13530797603 |
| 184 | 王秋涛          | 15817220346 |
| 185 | 你佬板          | 15018723389 |
| 186 | 杨静然          | 17666000879 |
| 187 | 王大包          | 15766257785 |
| 188 | mmmm    | 18922784171 |
| 189 | aaaa    | 13333333338 |
| 190 | 曹操          | 15012345671 |
| 191 | 刘备          | 15018729831 |
| 192 | 33      | 15018729832 |
| 193 | 黄俊飞          | 13798340660 |
| 194 | 刘银柱          | 13926551959 |
| 195 | 段远峰          | 18666227707 |
| 196 | 方韩华          | 13590328973 |
| 197 | 李金跃          | 13923813924 |
| 198 | 徐浩量          | 13902659323 |
| 199 | 冯强中          | 13723705190 |
| 200 | 陈钊坤          | 13923806770 |
| 201 | 苏春梅          | 13923718214 |
| 202 | 陆蕙          | 15112336890 |
| 203 | 刘玉龙          | 17665208122 |
| 204 | 徐文          | 13924662503 |
| 205 | 詹桂丽          | 13714343707 |
| 206 | 555           | 13333335555 |
| 207 | 林锦荣          | 13922887402 |
| 208 | 汪燕          | 15815596725 |
| 209 | 潘欢          | 15016231267 |
| 210 | 李传龙          | 18520867661 |
| 211 | 彭星          | 13766305365 |
| 212 | 看看          | 13333334441 |
| 213 | 张三          | 15811456111 |
| 214 | 常铮          | 18525582580 |
| 215 | 龚鑫          | 13631787532 |
| 216 | &nbsp;孙嘉潞    | 15143206661 |
| 217 | 陈彩莲          | 13798573025 |
| 218 | 苗萍          | 13641464009 |
| 219 | 龚鑫test  | 13631787533 |
| 220 | 李晓          | 18576616369 |
| 221 | 欧洪春          | 15919859774 |
| 222 | 梁杰          | 15814449876 |
| 223 | James    | 18820296818 |
| 224 | 互推          | 18503007861 |
| 225 | 方芳          | 13717018669 |
| 226 | 张媛          | 13620914500 |
| 227 | 封捷          | 13242033155 |
| 228 | 朱樑          | 13823311614 |
| 229 | 谢龙          | 18025364818 |
| 230 | 郑蔚青          | 13028852230 |
| 231 | 马继红          | 13530939458 |
| 232 | 李丹丹          | 15811823680 |
| 233 | 张驰          | 15179215555 |
| 234 | 付敏          | 18823311340 |
| 235 | 肖飞          | 13480604100 |
| 236 | 于志鹏          | 13138172199 |
| 237 | 李文强          | 18298459096 |
| 238 | 高凌飞          | 14704431483 |
| 239 | 孙小明          | 18620689027 |
| 240 | 柴庆          | 13798718003 |
| 241 | 龚大大          | 18523325456 |
| 242 | 王赵华          | 18166160750 |
| 243 | 赵珍          | 18810350013 |
| 244 | 吴勇胜          | 18718699278 |
| 245 | 杨金丽          | 15820491869 |
| 246 | 罗彩华          | 13554701605 |
| 247 | 杨娟娟          | 15013518028 |
| 248 | 卢清华          | 13554945854 |
| 249 | 黄            | 13410213073 |
| 250 | 1215    | 13546485246 |
| 251 | 张瑞          | 13418842932 |
| 252 | 张晓飞          | 13716962779 |
| 253 | 蔡满新          | 13534016683 |
| 254 | 曹清          | 17807655579 |
| 255 | 林莉华          | 13826685206 |
| 256 | 曾柳婷          | 18680348161 |
| 257 | 雷姐          | 13809866552 |
| 258 | 5555    | 13266666996 |
| 259 | 1301333 | 13013332333 |
| 260 | 郭倩君          | 18589040881 |
| 261 | 杨婷          | 13590178412 |
| 262 | 测试          | 13631787534 |
| 263 | 测试2    | 14799996666 |
| 264 | 测试22    | 14785236952 |
| 265 | 测试啊          | 14785233655 |
| 266 | 彭益鸿          | 18007370146 |
| 267 | 杨瑞胜          | 13590598871 |
*/


