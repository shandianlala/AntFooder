package com.sdll.antfooder.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sdll.antfooder.pojo.Shopcar;
import com.sdll.antfooder.pojo.User;
import com.sdll.antfooder.service.IShopcarService;
import com.sdll.antfooder.util.Conts;
import com.sdll.antfooder.util.ExecResult;

@Controller
@RequestMapping("/shopcar")
public class ShopcarController {
	
	@Autowired
	private IShopcarService shopcarService;

	/**
	 * 
	 * @param foodId
	 * @param foodPrice
	 * @param session
	 * @param oper	
	 * 		   -1 ：数量减去1
	 * 			0: 数量清零
	 * 			1：数量加上1
	 * @return
	 */
	@RequestMapping("/addToShopCar")
	@ResponseBody
	public ExecResult addToShopCar(String foodId , Double foodPrice ,HttpSession session , Integer oper){
		ExecResult er = new ExecResult();
		User user = (User)session.getAttribute(Conts.USER_SESSION_KEY);
		int row = shopcarService.insertShopcar(foodId, user.getUserId() ,foodPrice ,oper);
		if (row == 0) {
			er.setMsg("加入购物车失败");
			return er;
		}
		er.setSuccess(true);
		er.setMsg("加入购物车成功");
		return er;
	}
	
	@RequestMapping("/shopcarList")
	@ResponseBody
	public List<Shopcar> shopcarList(HttpSession session){
		User user = (User)session.getAttribute(Conts.USER_SESSION_KEY);
		List<Shopcar> shopcarList = shopcarService.listShopcar(user.getUserId());
		return shopcarList;
	}
	
	
	
	
}
