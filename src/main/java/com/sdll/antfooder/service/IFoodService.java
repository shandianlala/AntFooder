package com.sdll.antfooder.service;

import java.util.List;

import com.sdll.antfooder.pojo.Food;
import com.sdll.antfooder.pojo.Menu;
import com.sdll.antfooder.vo.PageConfig;
import com.sdll.antfooder.vo.PageVo;

public interface IFoodService {
	
	List<Food> listFoodByMenuId(String menuId);
	
	Food getFoodByFoodId(String foodId);
	
	int updateMenuByfoodId(Food food);
	
	int insertFood(Food food);
	
	PageVo<Food> listFoodByPage(Food food ,PageConfig page);

}
