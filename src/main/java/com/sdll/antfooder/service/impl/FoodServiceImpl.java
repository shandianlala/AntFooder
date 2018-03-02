package com.sdll.antfooder.service.impl;

import java.util.List;
import java.util.UUID;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdll.antfooder.dao.FoodMapper;
import com.sdll.antfooder.pojo.Food;
import com.sdll.antfooder.pojo.Menu;
import com.sdll.antfooder.service.IFoodService;
import com.sdll.antfooder.util.Conts;
import com.sdll.antfooder.util.PageUtil;
import com.sdll.antfooder.vo.PageConfig;
import com.sdll.antfooder.vo.PageVo;
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

	@Override
	public PageVo<Food> listFoodByPage(Food food, PageConfig page) {
		// TODO Auto-generated method stub
		String menuId = null;
		page.setPageIndex((page.getPageNum()-1)*page.getPageSize());
		if (food.getMenuId()!=null) {
			menuId = food.getMenuId().getMenuId();
		}
		List<Food> list = foodMapper.selectFoodByPage(page.getPageIndex(),page.getPageSize(),menuId,food.getFoodName());
		Integer rowCount = foodMapper.countFood(menuId,food.getFoodName());
		if(rowCount!=null){
			page.setRowCount(rowCount);
		}
		PageVo<Food> pageList = PageUtil.getPageList(page , list);
		return pageList;
	}

	@Override
	public Food getFoodByFoodId(String foodId) {
		// TODO Auto-generated method stub
		return foodMapper.selectByPrimaryKey(foodId);
	}

	@Override
	public int updateMenuByfoodId(Food food) {
		// TODO Auto-generated method stub
		return foodMapper.updateByPrimaryKey(food);
	}

	@Override
	public int insertFood(Food food) {
		// TODO Auto-generated method stub
		food.setFoodId(UUID.randomUUID().toString().replaceAll("-", ""));
		food.setFoodState(Conts.STATE_OK);
		return foodMapper.insert(food);
	}
	
	
	

}
