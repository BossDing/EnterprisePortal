package com.shengxinwu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.shengxinwu.model.News;
import java.util.List;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import com.shengxinwu.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
// import java.util.Arrays;
// import com.shengxinwu.model.User;
// import java.util.Date;
// import com.shengxinwu.model.UserType;

@Controller
public class NewsController{
	@Autowired
	NewsService nService;
	/*全局用的数据*/
	List<News> newsList;
	
	@RequestMapping("/newsList")
	public ModelAndView getNewsList(@RequestParam("start") int start, @RequestParam("number") int number){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("newsList");
		
		newsList = nService.getNewsList(start, number);
//{	//test part
			// User u = new User();
			// u.setUserId(1);
			// u.setUserName("小李子");
			// u.setUserPwd("123");
			// u.setUserType(UserType.ADMIN);
			// u.setRegisterTime(new Date(2019-1900,6,14));
			
			// News news1 = new News();
			// news1.setNewsId(1);
			// news1.setNewsTitle("第一个新闻的标题");
			// news1.setNewsContent("第一个新闻的内容");
			// news1.setNewsTime(new Date(2019-1900,6,14));
			// news1.setPublisher(u);
			// News news2 = new News();
			// news2.setNewsId(2);
			// news2.setNewsTitle("第er个新闻的标题");
			// news2.setNewsContent("第er个新闻的内容");
			// news2.setNewsTime(new Date(2019-1900,6,14));
			// news2.setPublisher(u);
			
			// newsList = Arrays.asList(news1, news2);
//}
		
		mv.addObject("newsList", newsList);
		return mv;
	}
	
	@RequestMapping("/newsContent")
	public ModelAndView getNewsContent(@RequestParam("newsId") int newsId){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("newsContent");
		News news = null;
		for(News tmp : newsList){
			if(tmp.getNewsId() == newsId){
				news = tmp;
				break;
			}
		}
		if(news == null){
			news = new News();
			news.setNewsTitle("没有该新闻");
			news.setNewsContent("没有该新闻");
			news.setPublisher(null);
		}
		mv.addObject("news",news);
		return mv;
	}
}