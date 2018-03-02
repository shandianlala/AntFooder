package com.sdll.antfooder.service;

import java.util.List;

import com.sdll.antfooder.pojo.Menu;
import com.sdll.antfooder.vo.PageConfig;
import com.sdll.antfooder.vo.PageVo;

public interface IMenuService {
	
	List<Menu> listMenu();
	
	PageVo<Menu> listMenuByPage(Menu menu ,PageConfig page);
	
	Menu getMenuById(String menuId);
	
	int insertMenu(Menu menu);
	
	int updateMenuBymenuId(Menu menu);

}
