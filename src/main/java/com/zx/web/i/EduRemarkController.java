package com.zx.web.i;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.zx.common.util.SystemUtil;
import com.zx.entity.Apply;
import com.zx.entity.Remark;
import com.zx.service.EduRemarkService;
import com.zx.service.RemarkService;

/**
 * 备注模块
 * @author gosin1994
 * @date 2018年8月16日上午10:23:45 
 * @email gx1008666@163.com
 */

@Controller
@RequestMapping("/i/eduRemark")
public class EduRemarkController {
	
	private static final Logger logger = LoggerFactory.getLogger(EduRemarkController.class);
	
	@Autowired
	private EduRemarkService eduRemarkService;
	
	@RequestMapping
	public ModelAndView save(@RequestParam("applyId") Integer applyId,@RequestParam("remarkMsg") String remarkMsg,@RequestParam("operator") String operator) {
		ModelAndView mv = new ModelAndView();
		Remark rk = new Remark();
		rk.setApplyId(applyId);
		
		//创建String类型的日期
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String strDate = sdf.format(new Date());
		rk.setDate(strDate);
		
		rk.setOperator(operator);
		rk.setRemark(remarkMsg);
		
		//保存remark
		eduRemarkService.save(rk);
		
		mv.setViewName("redirect:/i/apply2");
		return mv;
		
	}
	
	
	@RequestMapping("/selectRemark")
	public void selectRemark(@RequestParam("applyId") Integer applyId,HttpServletResponse response){
		
		List<Remark> remarks = null;
		
		remarks = eduRemarkService.selectByApplyId(applyId);
		
		String json = JSON.toJSONString(remarks);
		
		try {
			response.getWriter().println(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	
}
