package com.zx.web.o;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zx.entity.Customer;
import com.zx.service.CustomerService;

@Controller
@RequestMapping("/o/customer")
public class CustomerOController {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerOController.class);
	
	@Autowired
	private CustomerService customerService;
	
	
	@RequestMapping
	public ModelAndView index(@RequestParam(value="mid",defaultValue="0") Integer mid){
		ModelAndView mv = new ModelAndView();
		mv.addObject("mid", mid);
		mv.setViewName("o/choose1");
		return mv;
	}
	
	
	@RequestMapping("/apply")
	public ModelAndView applyView(@RequestParam("mid") Integer mid){
		ModelAndView mv = new ModelAndView();
		mv.addObject("mid", mid);
		mv.setViewName("o/customer");
		return mv;
	}
	
	
	
	

	@RequestMapping(value="/apply",method=RequestMethod.POST)
	public ModelAndView apply(HttpServletRequest request, Customer customer){
		ModelAndView mv = new ModelAndView();
		
		customerService.apply(customer);
		mv.addObject("customer", customer);
		mv.setViewName("o/choose2");
		return mv;
	}
	
	
	@RequestMapping("/success")
	public ModelAndView ok(Integer cid){
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("o/c_success");
		return mv;
	}
	
	
	@RequestMapping("/isPhoneExist")
	@ResponseBody
	public boolean isPhoneExist(String phone){
		return customerService.isPhoneExist(phone);
	}
	
}
