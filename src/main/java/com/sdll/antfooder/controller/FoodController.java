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
import com.sdll.antfooder.util.StringUtils;
import com.sdll.antfooder.vo.PageConfig;
import com.sdll.antfooder.vo.PageVo;

@Controller
@RequestMapping("/food")
public class FoodController {
	
	@Autowired
	private IFoodService foodService;
	
	@Autowired
	private IMenuService menuService;

	@RequestMapping("/foodList")
	public ModelAndView foodList(PageConfig page, Food food ,String menuid){
		ModelAndView view = new ModelAndView("food/foodList");
		food.setMenuId(new Menu(menuid));
		PageVo<Food> foodList = foodService.listFoodByPage(food, page);
		List<Menu> menuList = menuService.listMenu();
		view.addObject("menuList", menuList);
		view.addObject("page", foodList);
		view.addObject("searchParam", food);
		return view;
	}
	
	@RequestMapping("/toAddOrEditFood")
	public ModelAndView toAddOrEditFood(){
		ModelAndView view = new ModelAndView("food/addOrEditFood");
		List<Menu> menuList = menuService.listMenu();
		view.addObject("menuList", menuList);
		
		return view;
	}
	
	@RequestMapping("/addFood")
	@ResponseBody
	public ExecResult addFood(@RequestParam(value = "file", required = false)MultipartFile file,Food food , String menuid , HttpSession session){
		ExecResult er = new ExecResult();
		food.setMenuId(new Menu(menuid));
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
		food.setFoodPhoto("resources/images/"+fileName);
		int row = foodService.insertFood(food);
		if (row == 0) {
			er.setMsg("菜品上传失败");
			return er;
		}
		er.setMsg("菜品上传成功");
		er.setSuccess(true);
		return er;
	}
	
	@RequestMapping("/deleteFood")
	@ResponseBody
	public ExecResult deleteFood(String foodId){
		ExecResult er = new ExecResult();
		if (StringUtils.isBlank(foodId)) {
			er.setMsg("删除失败，请刷新页面试试");
			return er;
		}
		Food food = foodService.getFoodByFoodId(foodId);
		food.setFoodState(Conts.STATE_DELETE);
		foodService.updateMenuByfoodId(food);
		er.setMsg("删除菜品成功");
		er.setSuccess(true);
		return er;
	}
	
	
	
}
