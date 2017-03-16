package com.sdll.antfooder.service.impl;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdll.antfooder.dao.UserMapper;
import com.sdll.antfooder.pojo.User;
import com.sdll.antfooder.service.IUserSercvice;
@Service
@Transactional
public class UserServiceImpl implements IUserSercvice {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User userLogin(String userPhone) {
		// TODO Auto-generated method stub
		return userMapper.queryUserByUserPhone(userPhone);
	}

}
