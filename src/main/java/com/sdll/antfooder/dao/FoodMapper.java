package com.sdll.antfooder.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.sdll.antfooder.pojo.Food;
import com.sdll.antfooder.pojo.Menu;

public interface FoodMapper {
    int deleteByPrimaryKey(String foodId);

    int insert(Food record);

    int insertSelective(Food record);

    Food selectByPrimaryKey(String foodId);

    int updateByPrimaryKeySelective(Food record);

    int updateByPrimaryKey(Food record);
    
    List<Food> selectByMenuId(String menuId);
    
    List<Food> selectFoodByPage(@Param("pageIndex") int pageIndex , @Param("pageSize")int pageSize,
    		@Param("menuId")String menuId , @Param("foodName")String foodName);
    
    Integer countFood(@Param("menuId")String menuId , @Param("foodName")String foodName);
    
    
}