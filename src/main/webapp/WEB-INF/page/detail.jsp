<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="../common/common-me.jsp" %>
   <%@include file="../common/common-ui-me.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<script type="text/javascript">
		
			
		</script>
		
				<script type="text/html" id="showcartmpl">
						<h2>购物车详情</h2>
						{{#key}}
						<div id="food_info">
							<img src="${basePath}/{{foodId.foodPhoto}}"/>
							<div id="food_title">{{foodId.foodName}}</div>
							<div id="food_tool">
								<button id="clear_num" class="change_num" onclick="addToShopCar('{{foodId.foodId}}',{{foodId.foodPrice}},0)" ></button>
								<button id="sub_num" class="change_num" onclick="addToShopCar('{{foodId.foodId}}',{{foodId.foodPrice}},-1)" ></button>
								<span> {{foodNum}} </span>
								<button id="add_num" class="change_num" onclick="addToShopCar('{{foodId.foodId}}',{{foodId.foodPrice}},1)" ></button>
								<span id="total_price">{{totalMoney}}元</span>
							</div>
						</div>
						{{/key}}
				</script>
		
	</head>
	<body onload="shopcarList()">
		<div id="header">
			<div id="logoimg" class="header_class">
				<a href="${basePath }/"><img src="${basePath }/resource/img/logoImg.png"/></a>
			</div>
			<div id="header_right">
				<div id="login_user" class="header_class">
					<c:if test="${not empty LOGIN_USER }">
						<span>欢迎你，<b>${LOGIN_USER.userName }</b></span>
						<a href="${basePath }/logOut" id="login_out">退出</a>
					</c:if>
					<c:if test="${empty LOGIN_USER }">
						<a href="#" class="register_login">注册</a><a href="${basePath }/user/toRegisterAndLogin" class="register_login">登陆</a>
					</c:if>
				</div>
				<div id="menulist">
					<ul>
						<li id="menu_1" ><a href="#" >首页</a></li>
						<li id="menu_2"><a href="#" >订单查询</a></li>
						<li id="menu_3"><a href="#">会员中心</a></li>
						<li id="menu_4"><a href="#">帮助中心</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!--新增地址遮罩层实现-->
		<div id="addadress" class="add_address">
			<div id="add_new_address" >
				<p>asdfasdfasdf</p>
			</div>
		</div>
		
		
		
		
		<div id="content">
			<!--滑动图片-->
			<div id="slide_img" class="slideimg">
	            <img style="width:1335px;height:393px" src="${basePath }/${menu.menuPhoto}" alt="1"/>
			</div>
			
			<div id="food_menu_list">
				<div id="bg_menu"></div>
				<div id="food_content">
					<ul id="ul_food_content">
						<!--热卖-->
						<li >
							<a class="a_hot"  onclick="openClose(1)" href="javascript:void(0)">热卖<i id="open_bg1" ></i></a>
							<div id="sale_div_1" class="sale_div">
								<c:forEach items="${hotList }" var="hotList">
									<a href="${basePath }/menu/detailList?menuId=${hotList.menuId}">${hotList.menuName }</a>
								</c:forEach>
							</div>
						</li>
						<!--营养早餐-->
						<li >
							<a class="a_morning"  onclick="openClose(2)" href="javascript:void(0)">营养早餐  8:00-10:30<i id="open_bg2" class="open_close"></i></a>
							<div id="sale_div_2" class="sale_div">
								<c:forEach items="${morningList }" var="morningList">
									<a href="${basePath }/menu/detailList?menuId=${morningList.menuId}">${morningList.menuName }</a>
								</c:forEach>
							</div>
						</li>
						<!--丰富主食-->
						<li >
							<a class="a_lunch"  onclick="openClose(3)" href="javascript:void(0)">丰富主食  10:30-22:00<i id="open_bg3" class="open_close"></i></a>
							<div id="sale_div_3" class="sale_div">
								<c:forEach items="${mainList }" var="mainList">
									<a href="${basePath }/menu/detailList?menuId=${mainList.menuId}">${mainList.menuName }</a>
								</c:forEach>
							</div>
						</li>
						<!--轻松下午茶-->
						<li >
							<a class="a_lunch"  onclick="openClose(4)" href="javascript:void(0)">下午茶  14:00-17:00<i id="open_bg4" class="open_close"></i></a>
							<div id="sale_div_4" class="sale_div">
								<c:forEach items="${afternoonList }" var="afternoonList">
									<a href="${basePath }/menu/detailList?menuId=${afternoonList.menuId}">${afternoonList.menuName }</a>
								</c:forEach>
							</div>
						</li>
					</ul>
				</div>
				<!--底部-->
				<div id="bg_bottom">
					
				</div>
			</div>
			
			<!--购物车-->
			<div id="cart-list">
				<div id="cart_1">
				</div>
				<a id="opencart" href="javascript:void(0)" onclick="slideCar(1)"></a>	
				<div id="cart_inner" style="display: none;">
					<div id="cart_title">
					</div>
					<div id="cart_time">
						下单<span>45分钟左右</span>送达
					</div>
					<a id="address_list" href="javascript:void(0)">
						<span>dd武汉市[光谷]珞喻路619号附近dd</span>
						<i id="address_new"></i>
					</a>
					<div id="newaddress">
						<a href="javascript:void(0)" onclick="addAddress()"><span>添加新地址</span></a>
					</div>
			
					<div id="car_price">
						<div id="cart_total_price" class="price">
							<div class="price_label">
								餐品总额 : 
							</div>
							<div class="price_item">
								<span id="totalmoneys"></span> 元
							</div>
						</div>
						
						<div id="cart_total_price" class="price">
							<div class="price_label">
								外送费 : 
							</div>
							<div class="price_item">
								<span>0.0</span> 元
							</div>
						</div>
						<div id="cart_total_price" class="price">
							<div class="price_label">
								应付金额: 
							</div>
							<div class="price_item">
								<span id="totalmoneysAddExpress"></span> 元
							</div>
						</div>
					</div>
					<!-- 结算按钮 -->
					<input type="button" id="calculate_price" value="" /> 
					<div id="food_list">
						
							
					</div> 
						
				</div>
				<!--关闭购物车-->
				<a id="closecart"  href="javascript:void(0)" style="display: none;" onclick="slideCar(0)"></a>
			</div>
		</div>
		
		<div id="fmlist">
			<ul >
				<c:forEach var="foodList" items="${foodList }">
					<li class="menufood">
					<a href="javascript:void(0)"><img src="${basePath }/${foodList.foodPhoto}"/></a>
					<a href="#" class="title">${foodList.foodName}</a>
					<div class="foodprice">
						<sub >￥</sub>
						<sub>${foodList.foodPrice}</sub>
					</div>
					<a href="javascript:void(0)" id="gotobuy" onclick="addToShopCar('${foodList.foodId}',${foodList.foodPrice},1)" class="button button-pill button-tiny" style="margin-top: 5px;background-color: red;color: white">立即购买</a>
					<!-- <button type="button"  class="btn">立即购买</button> -->
				</li>
				</c:forEach>
			</ul>
		</div>
		
		<div id="footer" style="margin-top: 10px;">
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
		
	<script>
		/*菜单  */
		
		
	</script>
	</body>
</html>
