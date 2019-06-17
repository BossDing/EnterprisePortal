package com.shengxinwu.service;

import org.springframework.stereotype.Component;
import org.springframework.beans.factory.annotation.Autowired;
import com.shengxinwu.dao.UserDao;
import com.shengxinwu.model.User;
import java.util.List;

@Component
public class UserService{
	
	@Autowired
	private UserDao userDao;
	
	public User getUserByName(String name){
		return userDao.findUserByName(name);
	} 
	
	public User getUserById(int id){
		return userDao.findUserById(id);
	}
	
	public List<User> getAllUser(){
		return userDao.findAllUser();
	}
}