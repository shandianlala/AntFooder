var $j = $.noConflict();
		
function addAddress(){
	$j("#addadress").css("height", $j(document).height());
	$j("#addadress").css('display','block');
	$j("#add_new_address").show();
}



		
		
function slideCar(m){
	switch (m){
		case 1:
		/*展示购物车*/
			$j("#opencart").css('display','none');
			/*$("#cart_inner").css('display','block');*/
			$j("#cart_inner").slideDown(1500);
			$j("#closecart").css('display','block');
			break;
		case 0:
		/*关闭购物车*/
			$j("#opencart").css('display','block');
			$j("#cart_inner").css('display','none');
			$j("#closecart").css('display','none');
			break;
		default:
			break;
	}
}

/*左边菜单栏的打开和关闭*/
function openClose(m){
	for (var i=1;i<5;i++) {
		if (i==m) {
			var disp = $j("#sale_div_"+i).css('display')+"";
			if(disp=="block"){
				$j("#open_bg"+i).css('background','url(${basePath }/resources/images/bgs.png)-174px -127px');
			}else{
				$j("#open_bg"+i).css('background','url(${basePath }/resources/images/bgs.png)-159px -127px');
			}
			$j("#sale_div_"+i).slideToggle(500);
		}else{
			/*关掉其他几个div*/
			if(i!=1&&m!=1){
				var disp = $j("#sale_div_"+i).css('display')+"";
				if(disp=="block"){
					$j("#sale_div_"+i).slideToggle(500);
				}
				$j("#open_bg"+i).css('background','url(${basePath }/resources/images/bgs.png)-174px -127px');
				//$j("#sale_div_"+i).css('display','none');
			}
			
		}
	}
}

//新增商品到购物车,更改购物车商品的数量
function addToShopCar(foodId , foodPrice , oper){
	if(!checkBlank(foodId)){
		return;
	}
	$j.ajax({
		type : "post",
		url : "../shopcar/addToShopCar",
		dataType : "json",
		data : {
			"foodId" : foodId,
			"foodPrice" : foodPrice,
			"oper" : oper
		},
		success : function(data){
			if(data.success){
				shopcarList();
			}else{
				
			}
		},
		error : function(data){
			
			
		}
	});
}

//shopcarList,购物车列表展示
function shopcarList(){
	$j.ajax({
		type : "POST",
		url : "../shopcar/shopcarList",
		dataType : "json",
		success : function(data){
			var totalMoneys = 0;
			for(var i=0;i<data.length;i++){
				totalMoneys = totalMoneys +data[i].totalMoney;
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



