package com.shengxinwu.mapper;

import com.shengxinwu.model.News;
import java.util.List;
import org.apache.ibatis.session.RowBounds;

public interface NewsMapper{
	public List<News> findAllNews(RowBounds rb);
	public List<News> findAllNews();
	public List<News> findAllNewsOfOne(int userId);
	public int insertNews(News news);
	public int updateNews(News news);
	public int deleteNews(int newsId);
}