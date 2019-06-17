package com.shengxinwu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import com.shengxinwu.service.UserService;
import com.shengxinwu.model.User;
import java.util.List;

@Controller
public class AdminUserController{
	
	@Autowired
	private UserService uService;
	
	@RequestMapping("/adminUser.mvc")
	public ModelAndView getAdminUserPage(@RequestParam("userId") int userId, @RequestParam("start") int start, @RequestParam("number") int number){
		ModelAndView mv = new ModelAndView("admin/adminUser");
		User user = uService.getUserById(userId);
		mv.addObject("user", user);
		List<User> userList = uService.getAllUser();	//这里应该来自数据库
		mv.addObject("userList", userList);
		return mv;
	}
}