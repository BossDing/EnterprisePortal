package com.shengxinwu.mapper;

import com.shengxinwu.model.News;
import java.util.List;
import org.apache.ibatis.session.RowBounds;

public interface NewsMapper{
	public List<News> findAllNews(RowBounds rb);
	public List<News> findAllNews();
}