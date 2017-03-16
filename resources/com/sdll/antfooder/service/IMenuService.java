package com.sdll.antfooder.service;

import java.util.List;

import com.sdll.antfooder.pojo.Menu;

public interface IMenuService {
	
	List<Menu> listMenu();
	
	Menu getMenuById(String menuId);

}
