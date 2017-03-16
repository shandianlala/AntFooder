package com.sdll.antfooder.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sdll.antfooder.pojo.Food;
import com.sdll.antfooder.pojo.Menu;
import com.sdll.antfooder.service.IFoodService;
import com.sdll.antfooder.service.IMenuService;
import com.sdll.antfooder.util.InformationTool;
import com.sdll.antfooder.util.StringUtils;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	private IMenuService menuService;
	
	@Autowired
	private IFoodService foodService;

	@RequestMapping("/detailList")
	public ModelAndView menuList(String menuId){
		ModelAndView view = new ModelAndView("/detail");
		List<Menu> menuList = menuService.listMenu();
		InformationTool.getInformation(view, menuList);
		Menu menu = null;
		List<Food> foodList = null;
		if (StringUtils.isNotBlank(menuId)) {
			menu = menuService.getMenuById(menuId);
			foodList = foodService.listFoodByMenuId(menuId);
		}
		view.addObject("foodList", foodList);
		view.addObject("menu", menu);
		return view;
	}
	
}
