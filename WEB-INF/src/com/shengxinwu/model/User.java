package com.shengxinwu.model;

import com.shengxinwu.model.UserType;
import java.sql.Timestamp;

public class User{
	int userId;
	String userName;
	String userPwd;
	UserType userType;
	Timestamp registerTime;
	
	/*getter and setter*/
	public void setUserId(int value){
        this.userId = value;
    }
    public int getUserId(){
        return this.userId;
    }


    public void setUserName(String value){
        this.userName = value;
    }
    public String getUserName(){
        return this.userName;
    }


    public void setUserPwd(String value){
        this.userPwd = value;
    }
    public String getUserPwd(){
        return this.userPwd;
    }


    public void setUserType(UserType value){
        this.userType = value;
    }
    public UserType getUserType(){
        return this.userType;
    }


    public void setRegisterTime(Timestamp value){
        this.registerTime = value;
    }
    public Timestamp getRegisterTime(){
        return this.registerTime;
    }
}