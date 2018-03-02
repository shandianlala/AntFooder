package com.sdll.antfooder.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.apache.catalina.tribes.group.interceptors.TwoPhaseCommitInterceptor.MapEntry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sdll.antfooder.pojo.Menu;
import com.sdll.antfooder.pojo.User;
import com.sdll.antfooder.service.IMenuService;
import com.sdll.antfooder.service.IUserService;
import com.sdll.antfooder.util.Conts;
import com.sdll.antfooder.util.ExecResult;
import com.sdll.antfooder.util.InformationTool;
import com.sdll.antfooder.util.RandomValidateCodeGenerator;
import com.sdll.antfooder.util.StringUtils;

@Controller
public class MainController {
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private IMenuService menuService;
	
	@RequestMapping(value={"","/main/toHome.do"})
	public ModelAndView toIndex(HttpSession session){
		ModelAndView view = new ModelAndView("/index");
		List<Menu> menuList = menuService.listMenu();
		InformationTool.getInformation(view, menuList);
		return view;
	}
	
	@RequestMapping("/validate")
	public void validate(HttpSession session , HttpServletRequest request , HttpServletResponse response) throws IOException{
		String key = RandomValidateCodeGenerator.randKey(4);
		try {
			Map.Entry<String, BufferedImage> randCode = new RandomValidateCodeGenerator().getRandCode(key);
			session.setAttribute(Conts.VALIDATE_CODE_KEY, randCode.getKey());
			ImageIO.write(randCode.getValue(), "JPEG", response.getOutputStream());
		} catch (Exception e) {
			System.out.println("生成验证码图片失败了!");
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/userLogin")
	@ResponseBody
	public ExecResult userLogin(User user , HttpSession session){
		ExecResult er = new ExecResult();
		User usertemp = null;
		String validateCode = (String) session.getAttribute(Conts.VALIDATE_CODE_KEY);
		if (!user.getValidateCode().equalsIgnoreCase(validateCode)) {
			er.setMsg("验证码错误！");
			return er;
		}
		if (!StringUtils.isNotBlank(user.getUserPhone())) {
			er.setMsg("登陆失败，请刷新页面试试");
			return er;
		}
		usertemp = userService.userLogin(user.getUserPhone());
		if (usertemp == null) {
			er.setMsg("账户不存在！");
			return er;
		}
		if (!user.getUserPassword().equals(usertemp.getUserPassword())) {
			er.setMsg("账号或者密码错误！");
			return er;
		}
		session.setAttribute(Conts.USER_SESSION_KEY, usertemp);
		er.setSuccess(true);
		er.setMsg("登陆成功");
		return er;
	}
	
	@RequestMapping("/logOut")
	public ModelAndView logOut(HttpSession session){
		session.invalidate();
		ModelAndView view = new ModelAndView("/index");
		List<Menu> menuList = menuService.listMenu();
		InformationTool.getInformation(view, menuList);
		return view;
	}
	

	
	
	

}
