package com.sdll.antfooder.util;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.sdll.antfooder.pojo.Menu;

public class InformationTool {
	
	public static void getInformation(ModelAndView view , List<Menu> menuList){
		List<Menu> hotList = new ArrayList<Menu>();
		List<Menu> morningList = new ArrayList<Menu>();
		List<Menu> mainList = new ArrayList<Menu>();
		List<Menu> afternoonList = new ArrayList<Menu>();
		for (Menu menu : menuList) {
			switch (menu.getMenuType()) {
			case "1":
				hotList.add(menu);
				break;
			case "2":
				morningList.add(menu);
				break;
			case "3":
				mainList.add(menu);
				break;
			case "4":
				afternoonList.add(menu);
				break;
			default:
				break;
			}
		}
		view.addObject("hotList", hotList);
		view.addObject("morningList",morningList );
		view.addObject("mainList", mainList);
		view.addObject("afternoonList",afternoonList );
	}
	

}
