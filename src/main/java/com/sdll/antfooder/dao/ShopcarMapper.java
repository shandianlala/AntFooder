package com.sdll.antfooder.dao;

import java.util.HashMap;
import java.util.List;

import com.sdll.antfooder.pojo.Food;
import com.sdll.antfooder.pojo.Shopcar;

public interface ShopcarMapper {
    int deleteByPrimaryKey(String shopId);

    int insert(Shopcar record);

    int insertSelective(Shopcar record);

    Shopcar selectByPrimaryKey(String shopId);

    int updateByPrimaryKeySelective(Shopcar record);

    int updateByPrimaryKey(Shopcar record);
    
    List<Shopcar> selectByUserId(String userId);
    
  //  Shopcar selectByUserIdAndFoodId(String userId, Food foodId );
    Shopcar selectByUserIdAndFoodId(HashMap map); 
    
    
}