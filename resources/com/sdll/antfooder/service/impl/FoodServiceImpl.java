package com.sdll.antfooder.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdll.antfooder.dao.FoodMapper;
import com.sdll.antfooder.pojo.Food;
import com.sdll.antfooder.service.IFoodService;
@Service
@Transactional
public class FoodServiceImpl implements IFoodService {
	
	@Autowired
	private FoodMapper foodMapper;

	@Override
	public List<Food> listFoodByMenuId(String menuId) {
		// TODO Auto-generated method stub
		return foodMapper.selectByMenuId(menuId);
	}

}
