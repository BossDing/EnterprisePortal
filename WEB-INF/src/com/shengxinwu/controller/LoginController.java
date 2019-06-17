package com.shengxinwu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import com.shengxinwu.model.User;
import com.shengxinwu.model.UserType;
import com.shengxinwu.service.UserService;

@Controller
public class LoginController{
	
	@Autowired
	private UserService uService;
	
	//for test
	private User testUser;
	
	// {//for test
		// User user = new User();
		// user.setUserName("haha");
		// user.setUserPwd("123");
		// testUser = user;
	// }//for test
	
	@RequestMapping("/login")
	public ModelAndView getLoginPage(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/login");
		User user = new User();
		mv.addObject("user", user);
		return mv;
	}
	
	@RequestMapping("/validateLogin")
	public ModelAndView validateLogin(User user){
		ModelAndView mv = new ModelAndView();
		
		String userName = user.getUserName();
		String userPwd = user.getUserPwd();
		User userDb = uService.getUserByName(userName); /*这个数据应该来自数据库,,OK了*/
		if( userDb != null && userPwd.equals(userDb.getUserPwd()) ){
//			mv.addObject("user", userDb);
//			mv.setViewName("admin/userPage");
//			mv.setViewName("admin/news");
//			attr.addAttribute("user", userDb);
			if( userDb.getUserType() == UserType.USER){
				mv.setViewName("redirect:newsManagePage.mvc?userId=" + userDb.getUserId() + "&start=0&number=5");
			}else{
				mv.setViewName("redirect:adminUser.mvc?userId=" + userDb.getUserId() + "&start=0&number=5");
			}
			return mv;
		}else{
			mv.addObject("user", new User());
			mv.addObject("tip", "您输入的用户名或者密码不正确");
			mv.setViewName("admin/login");
		}
		return mv;
	}
}