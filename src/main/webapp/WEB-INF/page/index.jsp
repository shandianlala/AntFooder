<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="../common/common-me.jsp" %>
   <%@include file="../common/common-ui-me.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<script type="text/javascript" src="${basePath }/resource/js/jquery.luara.0.0.1.min.js" ></script>
		
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
	<body onload="shopcarList('${LOGIN_USER.userId}')">
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
						<a href="#" class="register_login">注册</a><a href="user/toRegisterAndLogin" class="register_login">登陆</a>
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
		<div id="addaddress" class="add_address" onclick="addAddress()">
			
			
		</div>
		<div id="div_add_address"  class="add_new_address" >
				<p>asdfasdfasdf</p>
				<input type="text"/>
		</div>
		
		<div id="content">
			<!--滑动图片-->
			<div id="slide_img" class="slideimg">
				<ul>
		            <li><img src="${basePath }/resource/img/PC首页轮播图_1.jpg" alt="1"/></li>
		            <li><img src="${basePath }/resource/img/PC首页轮播_2.jpg" alt="2"/></li>
		            <li><img src="${basePath }/resource/img/pc首页轮播图4.jpg" alt="3"/></li>
		            <li><img src="${basePath }/resource/img/pc首页轮播图4.jpg" alt="4"/></li>
		        </ul>
		        <ol>
		            <li></li>
		            <li></li>
		            <li></li>
		            <li></li>
		        </ol>
			</div>
			<div id="little_foucs">
				<ul>
					<li><a href="#"><img src="${basePath }/resource/img/PC小焦点图1.jpg"/></a></li>
					<li><a href="#"><img src="${basePath }/resource/img/PC小焦点图2.jpg"/></a></li>
					<li><a href="#"><img src="${basePath }/resource/img/PC小焦点图3.jpg"/></a></li>
				</ul>
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
						<a href="javascript:void(0)" onclick="addAddress(1)"><span>添加新地址</span></a>
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
					<!--结算按钮-->
					<input type="button" id="calculate_price" value="" />
					<div id="food_list">
						
					</div>
				</div>
				<!--关闭购物车-->
				<a id="closecart"  href="javascript:void(0)" style="display: none;" onclick="slideCar(0)"></a>	
			</div>
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
					<a href="${basePath }/ztree">联系我们,toztree</a>
				</p>
				<p id="copright">Copyright2012 Kungfu 粤ICP备13066649号-1</p>
				<p id="chrome">建议使用google chrome3以上，IE9以上，360极速浏览器7.0以上，浏览器访问本网站</p>
				
			</div>
		</div>
		
	<script>
//		var $j = $.noConflict();
		
		function addAddress(m){
			if(m==1){
				/* 开启遮罩层 */
				$j("#addaddress").css("height", $j(document).height());
				$j("#addaddress").css('display','block');
				$j("#div_add_address").fadeIn(1000);
			}else{
				/* 关闭遮罩层 */
				$j("#addaddress").hide();
				$j("#div_add_address").hide();
			}
		}
		
		//新增商品到购物车,更改购物车商品的数量
		function addToShopCar(foodId , foodPrice , oper){
			if(!checkBlank(foodId)){
				return;
			}
			$j.ajax({
				type : "post",
				url : "${basePath}/shopcar/addToShopCar",
				dataType : "json",
				data : {
					"foodId" : foodId,
					"foodPrice" : foodPrice,
					"oper" : oper
				},
				success : function(data){
					if(data.success){
						shopcarList('1');
					}else{
						
					}
				},
				error : function(data){
					
					
				}
			});
		}

		//shopcarList,购物车列表展示
		function shopcarList(userId){
			if(!checkBlank(userId)){
				return ;
			}
			$j.ajax({
				type : "POST",
				url : "${basePath}/shopcar/shopcarList",
				dataType : "json",
				success : function(data){
					var totalMoneys = 0;
					for(var i=0;i<data.length;i++){
						totalMoneys = totalMoneys +data[i].totalMoney;
						data[i].totalMoney = toDecimal2(data[i].totalMoney);
					}
					totalMoneys = toDecimal2(totalMoneys);
					var listShopcar = {};
					listShopcar.key = data;
					var html=Mustache.render($j("#showcartmpl").html(), listShopcar);
					$j("#food_list").html(html);
					$j("#totalmoneys").text(totalMoneys);
					$j("#totalmoneysAddExpress").text(totalMoneys);
					//$j("#food_list").css('display','none');
					slideCar(1);
				}
			});
		}
	
		$j(function() {
			<!--调用Luara-->
			$j(".slideimg").luara({
				width: "1335",
				height: "393",
				interval: 4500,
				selected: "seleted",
				deriction: "left"
			});
		   // 初始化菜单
		/*	        var data = new Date();
		    var s = "2014/03/23 12:33:33";
		    var d = Date.parse(s);
		    alert(d);
		    alert(data);
		    if (data.getHours()>9&&data.getHours()<13) {
		    	alert("上午");
		    	
		    }*/
		});
		
		/*左边菜单栏的打开和关闭*/
		function openClose(m){
			for (var i=1;i<5;i++) {
				if (i==m) {
					var disp = $j("#sale_div_"+i).css('display')+"";
					if(disp=="block"){
						$j("#open_bg"+i).css('background','url(${basePath }/resource/img/bgs.png)-174px -127px');
					}else{
						$j("#open_bg"+i).css('background','url(${basePath }/resource/img/bgs.png)-159px -127px');
					}
					$j("#sale_div_"+i).slideToggle(500);
				}else{
					/*关掉其他几个div*/
					if(i!=1&&m!=1){
						var disp = $j("#sale_div_"+i).css('display')+"";
						if(disp=="block"){
							$j("#sale_div_"+i).slideToggle(500);
						}
						$j("#open_bg"+i).css('background','url(${basePath }/resource/img/bgs.png)-174px -127px');
						//$j("#sale_div_"+i).css('display','none');
					}
					
				}
			}
		}
	</script>
	</body>
</html>
