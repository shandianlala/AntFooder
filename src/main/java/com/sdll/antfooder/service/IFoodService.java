package com.sdll.antfooder.service;

import java.util.List;

import com.sdll.antfooder.pojo.Food;

public interface IFoodService {
	
	List<Food> listFoodByMenuId(String menuId);

}
