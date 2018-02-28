package com.sdll.antfooder.dao;

import org.apache.ibatis.annotations.Param;

import com.sdll.antfooder.pojo.User;

public interface UserMapper {
	
	User queryUserByUserPhone(@Param("userPhone") String userPhone);
	
	int deleteByPrimaryKey(String userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(String userId);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}