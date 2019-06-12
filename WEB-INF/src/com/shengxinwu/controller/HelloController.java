package com.shengxinwu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController{
	
	@RequestMapping("/index")
	public ModelAndView sayHello(){
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "Hello,Enterprise Portal");
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping("/anotherIndex")
	public ModelAndView anthoerIndex(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("anotherIndex");
		return mv;
	}
	
}