<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="${basePath}/resource/css/index.css"/>
		<link rel="stylesheet" type="text/css" href="${basePath}/resource/css/login.css"/>
		<script type="text/javascript" src="${basePath}/resource/js/jquery-1.8.3.min.js" ></script>
		<script type="text/javascript" src="${basePath}/resource/js/common-check.js"></script>
		<script type="text/javascript">
			var $j = $.noConflict();
			function refreshValidateCode(){
				$j("#validateCodeImg").attr("src","${basePath}/validate?date="+new Date());
			}
			
			$j(document).ready(function() {
				document.onkeydown = function(e) {
					var ev = document.all ? window.event : e;
					if (ev.keyCode == 13) {
						userLogin();
					}
				}
			});
			
			function userLogin(){
				var userPhone = $j("#userPhone").val();
				if(!checkBlank(userPhone)){
					$j("#msg").text("账号不能为空！");
					$j("#msg").css("display","block");
					return;
				}
				if(!checkMobile(userPhone)){
					$j("#msg").text("账户的手机格式不正确,请重新输入！");
					$j("#msg").css("display","block");
					return;
				}
				var userPassword = $j("#userPassword").val();
				if(!checkBlank(userPassword)){
					$j("#msg").text("密码不能为空！");
					$j("#msg").css("display","block");
					return;
				}
				var validateCode = $j("#validateCode").val();
				if(!checkBlank(validateCode)){
					$j("#msg").text("验证码不能为空！");
					$j("#msg").css("display","block");
					return;
				}
				$j.ajax({
					type : "POST",
					url : "${basePath}/userLogin",
					data : {
						"userPhone" : userPhone,
						"userPassword" : userPassword,
						"validateCode" : validateCode
					},
					dataType : "json" ,
					async : false,
					success : function(data){
						if(data.success){
							$j("#msg").text(data.msg);
							$j("#msg").css("display","block");
							window.location.href = "${basePath}/";
						}else{
							$j("#msg").text(data.msg);
							$j("#msg").css("display","block");
							$j("#validateCodeImg").attr("src","${basePath}/validate?date="+new Date());
						}
					},
					error : function(data){
						$j("#msg").text("程序执行出错！");
						$j("#msg").css("display","block");
					} 
					
				});
			}
			
			function clearMsg(){
				$j("#msg").css("display","none");
			}
			
			
		</script>
	</head>
	<body>
		<div id="header">
			<div id="logoimg" class="header_class">
				<a href="${basePath}/"><img src="${basePath}/resource/img/logoImg.png"/></a>
			</div>
			<div id="header_right">
				<div id="login_user" class="header_class">
					<!--<span>欢迎你，<b>闪电拉拉</b></span>
					<a href="#" id="login_out">退出</a>-->
				</div>
				<div id="menulist">
					<ul>
						<li id="menu_1" ><a href="index.html" >首页</a></li>
						<li id="menu_2"><a href="#" >订单查询</a></li>
						<li id="menu_3"><a href="#">会员中心</a></li>
						<li id="menu_4"><a href="#">帮助中心</a></li>
					</ul>
				</div>
			</div>
		</div>
<!--登陆部分输入框-->
		<div id="login_content">
			<h2>欢迎登陆蚂蚁食客会员中心</h2>
			<form action="" method="post">
				<p><b>账      户:</b><input type="text"  id="userPhone" class="login_content_input" onfocus="clearMsg()" placeholder="默认手机号码"></p>
				<p><b>密      码:</b><input type="password"  id="userPassword" class="login_content_input" onfocus="clearMsg()" placeholder="登陆密码"></p>
				<p><b>验证码:</b><input type="text" id="validateCode" class="check_input" maxlength="4" onfocus="clearMsg()" placeholder="验证码">
					<span id="check_code">
						<img id="validateCodeImg" src="${basePath}/validate"  onclick="refreshValidateCode()"/>
					</span>
				</p>
				<p><span id="msg" ></span></p>
				<button type="button" id="login_submit" onclick="userLogin()" >登陆</button>
			</form>
		</div>
		
		<div id="footer">
			<div id="footer_right">
				<ul>
					<li><a href="#" id="weibo"><i></i><span>蚂蚁食客官方微博</span></a></li>
					<li><a href="#" id="weixin"><i></i><span>蚂蚁食客官方微信</span></a></li>
					<li><a href="#" id="web"><i></i><span>蚂蚁食客官方网站</span></a></li>
				</ul>
				<br>
				<p id="about">
					<a href="#">关于蚂蚁食客</a>|
					<a href="#">法律条款</a>|
					<a href="#">联系我们</a>
				</p>
				<p id="copright">Copyright2012 Kungfu 粤ICP备13066649号-1</p>
				<p id="chrome">建议使用google chrome3以上，IE9以上，360极速浏览器7.0以上，浏览器访问本网站</p>
				
			</div>
		</div>
		

	</body>
</html>
