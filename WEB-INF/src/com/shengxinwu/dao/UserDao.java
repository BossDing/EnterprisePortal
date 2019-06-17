package com.shengxinwu.dao;

import com.shengxinwu.mapper.UserMapper;
import com.shengxinwu.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import java.util.List;

@Component
public class UserDao{
	
	@Autowired
	private UserMapper userMapper;
	
	public User findUserByName(String name){
		return userMapper.findUserByName(name);
	}
	
	public User findUserById(int id){
		return userMapper.findUserById(id);
	}
	
	public List<User> findAllUser(){
		return userMapper.findAllUser();
	}

}