package com.sdll.antfooder.service;

import java.util.List;

import com.sdll.antfooder.pojo.Shopcar;

public interface IShopcarService {
	
	int insertShopcar(String foodId , String userId ,Double foodPrice , Integer oper);
	
	List<Shopcar> listShopcar(String userId);

}
