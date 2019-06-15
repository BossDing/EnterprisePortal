package com.shengxinwu.service;

import org.springframework.stereotype.Component;
import com.shengxinwu.model.News;
import java.util.List;
import com.shengxinwu.dao.NewsDao;
import org.springframework.beans.factory.annotation.Autowired;

@Component
public class NewsService{
	@Autowired
	private NewsDao newsDao;
	
	public List<News> getNewsList(int start, int number){
		return newsDao.getNews(start, number);
	}
}