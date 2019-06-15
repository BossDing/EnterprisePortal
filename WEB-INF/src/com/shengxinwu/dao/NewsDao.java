package com.shengxinwu.dao;

import com.shengxinwu.mapper.NewsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;
import com.shengxinwu.model.News;
import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Component;

@Component
public class NewsDao{
	@Autowired
	private NewsMapper newsMapper;
	private RowBounds rowBounds;
	
	public List<News> getNews(int start, int number){
		rowBounds = new RowBounds(start, number);
		List<News> newsList = newsMapper.findAllNews(rowBounds);
//		List<News> newsList = newsMapper.findAllNews();
		return newsList;
	}
}