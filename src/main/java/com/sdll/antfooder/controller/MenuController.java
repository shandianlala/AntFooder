package com.sdll.antfooder.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sdll.antfooder.pojo.Food;
import com.sdll.antfooder.pojo.Menu;
import com.sdll.antfooder.service.IFoodService;
import com.sdll.antfooder.service.IMenuService;
import com.sdll.antfooder.util.Conts;
import com.sdll.antfooder.util.ExecResult;
import com.sdll.antfooder.util.InformationTool;
import com.sdll.antfooder.util.StringUtils;
import com.sdll.antfooder.vo.PageConfig;
import com.sdll.antfooder.vo.PageVo;

@Controller
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	private IMenuService menuService;
	
	@Autowired
	private IFoodService foodService;

	@RequestMapping("/detailList")
	public ModelAndView detailList(String menuId){
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
	
	@RequestMapping("/menuList")
	public ModelAndView menuList(Menu menu ,PageConfig page){
		ModelAndView view = new ModelAndView("menu/menuList");
		PageVo<Menu> menuList = menuService.listMenuByPage(menu,page);
		//List<Menu> menuList = menuService.listMenu();
		view.addObject("menu", menu);
		view.addObject("page", menuList);
		return view;
	}
	
	@RequestMapping("/toAddOrEditMenu")
	public ModelAndView toAddOrEditMenu(){
		ModelAndView view = new ModelAndView("menu/addOrEditMenu");
		
		
		return view;
	}
	
	@RequestMapping("/addMenu")
	@ResponseBody
	public ExecResult addMenu(@RequestParam(value = "file", required = false)MultipartFile file,Menu menu,HttpSession session){
		ExecResult er = new ExecResult();
		String path = session.getServletContext().getRealPath("resources/images");
		String fileName=file.getOriginalFilename();
		System.out.println("路径是："+path);
		File targetFile = new File(path,fileName);
		if (!targetFile.exists()) {
			targetFile.mkdir();
		}
		try {
			file.transferTo(targetFile);
		} catch (Exception e) {
			er.setMsg("照片上传失败");
			return er;
		}
		menu.setMenuPhoto("resources/images/"+fileName);
		int row = menuService.insertMenu(menu);
		if (row == 0) {
			er.setMsg("菜单上传失败");
			return er;
		}
		er.setMsg("菜单上传成功");
		er.setSuccess(true);
		return er;
	}
	
	@RequestMapping("/deleteMenu")
	@ResponseBody
	public ExecResult deleteMenu(String menuId){
		ExecResult er = new ExecResult();
		if (StringUtils.isBlank(menuId)) {
			er.setMsg("删除失败，请刷新页面试试");
			return er;
		}
		Menu menu = menuService.getMenuById(menuId);
		menu.setMenuState(Conts.STATE_DELETE);
		menuService.updateMenuBymenuId(menu);
		er.setMsg("删除菜单成功");
		er.setSuccess(true);
		return er;
	}
	
	
	
}
