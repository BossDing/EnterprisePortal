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
	
	public List<News> getNewsListOfOne(int id){
		return newsDao.getNewsOfOne(id);
	}
	
	public int addNews(News news){
		return newsDao.insertNews(news);
	}
	
	public int amendNews(News news){
		return newsDao.updateNews(news);
	}
	
	public int deleteNews(int newsId){
		return newsDao.deleteNews(newsId);
	}
}