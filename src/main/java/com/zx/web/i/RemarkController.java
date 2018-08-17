package com.zx.web.i;

import java.io.IOException;
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
import com.zx.service.RemarkService;

/**
 * 备注模块
 * @author gosin1994
 * @date 2018年8月16日上午10:23:45 
 * @email gx1008666@163.com
 */

@Controller
@RequestMapping("/i/remark")
public class RemarkController {
	
	private static final Logger logger = LoggerFactory.getLogger(RemarkController.class);
	
	@Autowired
	private RemarkService remarkService;
	
	@RequestMapping
	public ModelAndView save(@RequestParam("applyId") Integer applyId,@RequestParam("remarkMsg") String remarkMsg,@RequestParam("operator") String operator) {
		ModelAndView mv = new ModelAndView();
		Remark rk = new Remark();
		rk.setApplyId(applyId);
		rk.setDate(new Date());
		rk.setOperator(operator);
		rk.setRemark(remarkMsg);
		
		//保存remark
		remarkService.save(rk);
		
		mv.setViewName("redirect:/i/apply");
		return mv;
		
	}
	
	
	@RequestMapping("/selectRemark")
	public void selectRemark(@RequestParam("applyId") Integer applyId,HttpServletResponse response){
		
		List<Remark> remarks = null;
		
		remarks = remarkService.selectByApplyId(applyId);
		
		String data = JSON.toJSONString(remarks);
		
		try {
			response.getWriter().println(data);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	
}
