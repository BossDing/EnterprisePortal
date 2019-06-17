package com.shengxinwu.mapper;

import com.shengxinwu.model.User;
import java.util.List;

public interface UserMapper{
	
	public User findUserByName(String userName);
	public User findUserById(int userId);
	public List<User> findAllUser();
	
}