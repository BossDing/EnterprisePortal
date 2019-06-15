package com.shengxinwu.model;

import com.shengxinwu.model.User;
import java.util.Date;

public class News{
	int newsId;
	String newsTitle;
	String newsContent;
	Date newsTime;
	User publisher;
	
	/*getter and setter*/
	public void setNewsId(int value){
        this.newsId = value;
    }
    public int getNewsId(){
        return this.newsId;
    }


    public void setNewsTitle(String value){
        this.newsTitle = value;
    }
    public String getNewsTitle(){
        return this.newsTitle;
    }


    public void setNewsContent(String value){
        this.newsContent = value;
    }
    public String getNewsContent(){
        return this.newsContent;
    }


    public void setNewsTime(Date value){
        this.newsTime = value;
    }
    public Date getNewsTime(){
        return this.newsTime;
    }


    public void setPublisher(User value){
        this.publisher = value;
    }
    public User getPublisher(){
        return this.publisher;
    }
}