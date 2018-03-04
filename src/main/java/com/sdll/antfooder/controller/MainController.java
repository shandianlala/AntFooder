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
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
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
	public ModelAndView toIndex(HttpServletRequest request){
		ModelAndView view = new ModelAndView("/index");
		String ip  = request.getRemoteAddr();
		String host = request.getRemoteHost();
		System.out.println(ip +"-------"+host);
		Session session = SecurityUtils.getSubject().getSession();
		User user = (User) session.getAttribute(Conts.USER_SESSION_KEY);
		if (user!=null&&"2".equals(user.getUserStatus())) {
			// 1:普通用户  2：管理员
			view.setViewName("/mainPage");
			return view;
		}
		List<Menu> menuList = menuService.listMenu();
		InformationTool.getInformation(view, menuList);
		return view;
	}
	
	@RequestMapping("/toBackStage")
	public ModelAndView toBackStage(){
		ModelAndView view = new ModelAndView("/bglogin");
		return view;
	}
	
	@RequestMapping("/ztree")
	public String ztree(){
		
		return "ztree";
	}
	
	
	@RequestMapping("/validate")
	public void validate(HttpSession session , HttpServletRequest request , HttpServletResponse response) throws IOException{
		String key = RandomValidateCodeGenerator.randKey(4);
		try {
			Map.Entry<String, BufferedImage> randCode = new RandomValidateCodeGenerator().getRandCode(key);
//			session.setAttribute(Conts.VALIDATE_CODE_KEY, randCode.getKey());
			Subject currentUser = SecurityUtils.getSubject();
			currentUser.getSession().setAttribute(Conts.VALIDATE_CODE_KEY, randCode.getKey());
			ImageIO.write(randCode.getValue(), "JPEG", response.getOutputStream());
		} catch (Exception e) {
			System.out.println("生成验证码图片失败了!");
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/userLogin")
	@ResponseBody
	public ExecResult userLogin(User user){
		ExecResult er = new ExecResult();
//		User usertemp = null;
		Subject currentUser = SecurityUtils.getSubject();
		Session session = currentUser.getSession();
		String validateCode = (String) session.getAttribute(Conts.VALIDATE_CODE_KEY);
		if (!user.getValidateCode().equalsIgnoreCase(validateCode)) {
			er.setMsg("验证码错误！");
			return er;
		}
		if (!StringUtils.isNotBlank(user.getUserPhone())) {
			er.setMsg("登陆失败，请刷新页面试试");
			return er;
		}
//		usertemp = userService.userLogin(user.getUserPhone());
//		if (usertemp == null) {
//			er.setMsg("账户不存在！");
//			return er;
//		}
//		if (!user.getUserPassword().equals(usertemp.getUserPassword())) {
//			er.setMsg("账号或者密码错误！");
//			return er;
//		}
//		session.setAttribute(Conts.USER_SESSION_KEY, usertemp);
		try {

			UsernamePasswordToken token = new UsernamePasswordToken(user.getUserPhone(), user.getUserPassword());
			token.setRememberMe(true);

			currentUser.login(token);
			// 判断是否认证
			if (currentUser.isAuthenticated()) {
				User userSession = userService.userLogin(user.getUserPhone());
				session.setAttribute(Conts.USER_SESSION_KEY, userSession);
				er.setSuccess(true);
				er.setMsg("登陆成功");
			}
		} catch (AuthenticationException e) {
			e.printStackTrace();
			er.setMsg("账号或者密码错误！");
		}

		return er;
	}
	
	@RequestMapping("/logOut")
	public ModelAndView logOut() {
		Subject currentUser = SecurityUtils.getSubject();
		currentUser.logout();
//		session.invalidate();
		ModelAndView view = new ModelAndView("/index");
		List<Menu> menuList = menuService.listMenu();
		InformationTool.getInformation(view, menuList);
		return view;
	}
	

	
	
	

}
