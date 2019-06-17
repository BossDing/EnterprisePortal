package com.shengxinwu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.shengxinwu.service.NewsService;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;
import com.shengxinwu.model.*;
import com.shengxinwu.service.UserService;
import java.sql.Timestamp;

//for test
import java.util.Date;
import java.util.Arrays;



@Controller
public class NewsManageController{
	
	@Autowired
	private NewsService nService;
	@Autowired
	private UserService uService; //修改到了这里,OK了
	
	@RequestMapping("/newsManagePage")
	public ModelAndView toNewsManagePage(@RequestParam("userId") int userId, @RequestParam("start") int start, @RequestParam("number") int number){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/newsManagePage");
		List<News> newsList = nService.getNewsListOfOne(userId);//这里应该只是得到特定用户的新闻，OK了	
		User user = uService.getUserById(userId);

		mv.addObject("user", user);	//这里的user应该来自数据库查询,Ok了
		mv.addObject("newsList", newsList);
		mv.addObject("news",new News());
		return mv;
	}
	
	@RequestMapping("/addNews")
	public ModelAndView addNews(News news, @RequestParam("userId") int userId){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("forward:newsManagePage.mvc?userId=" + userId + "&start=0&number=5");
		User user = uService.getUserById(userId);
		mv.addObject("user", user);
		news.setPublisher(user);
		news.setNewsTime(new Timestamp(System.currentTimeMillis()));
		int count = nService.addNews(news); //这里应该由数据库操作
		if(count == 0){
			mv.addObject("tip","添加新闻出错");
		}
		return mv;
	}
	
	@RequestMapping("/editNews")
	public ModelAndView editNews(News news, @RequestParam("newsId") int newsId, @RequestParam("userId") int userId){
		ModelAndView mv = new ModelAndView("forward:newsManagePage.mvc?userId=" + userId + "&start=0&number=5");
		User user = uService.getUserById(userId);
		news.setPublisher(user);
		news.setNewsTime(new Timestamp(System.currentTimeMillis()));
		news.setNewsId(newsId);
		int count = nService.amendNews(news);
		//int count = 1;
		if(count == 0){
			mv.addObject("tip","修改新闻出错");
		}
		return mv;
	}
	
	@RequestMapping("/delNews")
	public ModelAndView delNews(@RequestParam("newsId") int newsId, @RequestParam("userId") int userId){
		ModelAndView mv = new ModelAndView("forward:newsManagePage.mvc?userId=" + userId + "&start=0&number=5");
		int count = nService.deleteNews(newsId);
		//int count = 1;
		if(count == 0){
			mv.addObject("tip", "删除新闻失败");
		}
		return mv;
	}
	
}