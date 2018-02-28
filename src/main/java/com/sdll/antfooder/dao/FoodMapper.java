package com.sdll.antfooder.dao;

import java.util.List;

import com.sdll.antfooder.pojo.Food;

public interface FoodMapper {
    int deleteByPrimaryKey(String foodId);

    int insert(Food record);

    int insertSelective(Food record);

    Food selectByPrimaryKey(String foodId);

    int updateByPrimaryKeySelective(Food record);

    int updateByPrimaryKey(Food record);
    
    List<Food> selectByMenuId(String menuId);
}