package com.sdll.antfooder.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdll.antfooder.dao.FoodMapper;
import com.sdll.antfooder.dao.ShopcarMapper;
import com.sdll.antfooder.pojo.Food;
import com.sdll.antfooder.pojo.Shopcar;
import com.sdll.antfooder.service.IShopcarService;
import com.sdll.antfooder.util.Conts;
@Service
@Transactional
public class ShopcarServiceImpl implements IShopcarService {

	@Autowired
	private ShopcarMapper shopcarMapper;
	
	@Autowired
	private FoodMapper foodMapper;
	
	@Override
	public int insertShopcar(String foodId ,String userId , Double foodPrice , Integer oper) {
		// TODO Auto-generated method stub
		int row = 0 ;
		Food food = new Food();
		food.setFoodId(foodId);
		//查询该用户购物车表中是否有这个商品
		HashMap map = new HashMap();
		map.put("userId", userId);
		map.put("foodId", food);
		Shopcar shopcar = shopcarMapper.selectByUserIdAndFoodId(map);
		if (shopcar != null) {
			switch (oper) {
			case -1:
				shopcar.setFoodNum(shopcar.getFoodNum()-1);
				break;
			case 0:
				shopcar.setFoodNum(0);
				break;
			case 1:
				shopcar.setFoodNum(shopcar.getFoodNum()+1);
				break;
			default:
				return row;
			}
			row = shopcarMapper.updateByPrimaryKey(shopcar);
			return row;
		}
		shopcar = new Shopcar();
		shopcar.setFoodId(food);
		shopcar.setUserId(userId);
		shopcar.setFoodNum(1);
		shopcar.setShopId(UUID.randomUUID().toString().replace("-", ""));
		shopcar.setFoodStatus(Conts.STATE_OK);
		row = shopcarMapper.insert(shopcar);
		return row;
	}

	@Override
	public List<Shopcar> listShopcar(String userId) {
		// TODO Auto-generated method stub
		return shopcarMapper.selectByUserId(userId);
	}

}
