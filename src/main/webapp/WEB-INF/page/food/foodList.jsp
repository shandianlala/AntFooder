<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/common.jsp"%>
<%@include file="../../common/common-ui.jsp"%>
<html>

<script type="text/javascript">
	/* 自动加载查询下拉框的角色 ，职业，部门，工作    
		1：部门
 		2：工作（web工程师）  
		3:职位(普通员工）*/
	
	/* 修改，删除，重置密码 */

	
	function deleteFood(foodId){
		$("#msgBoxConfirmInfo").html("确定要删除该菜品吗?");
		$("#msgBoxConfirm").modal('show');
		$("#msgBoxConfirmButton").on('click' , function(){
			$("#msgBoxConfirm").modal('hide');
			$.ajax({
				type : 'POST',
				url : '${basePath}/food/deleteFood',
				data : {
					'foodId' : foodId
				},
				dataType : 'json',
				success : function(data) {
					if (data.success) {
						$("#msgBoxInfo").html(data.msg);
						$("#msgBox").modal('show');
						$("#msgBoxOKButton").on('click' , function(){
							window.location.reload();
						});
					} else {
						$("#msgBoxInfo").html(data.msg);
						$("#msgBox").modal('show');
					}
				},
				error : function(data) {
					$("#msgBoxInfo").html("程序执行出错");
					$("#msgBox").modal('show');
				}
			});
		});
	}
	
	
	
	function showDialog(title , url , height){
		$("#modalDialogTitle").html(title);
		$("#modalDialogFrame").attr("height" , height);
		$("#modalDialogFrame").attr("src" , url);
		$("#modalDialog").modal('show');
	}
	
	function hideDialog(){
		$("#modalDialog").modal('hide');
	}
	
</script>

<head>
</head>

<body>
	
	<div id="wrap" class="">
		<!--    头部 和  菜单 start -->
		<%@include file="../../common/headAndLeft.jsp"%>
		<!--    头部 和  菜单 end -->
		
		<!-- 内容start -->
		<main class="main up-container-fluid">
		<div class="up-tab-content">
			<div class="up-tab-pane up-active" id="tabs1">
				<div class="border_btm first_title">
					<h4 class="up-top-cq-color">
						<span class="icon-right-dir"></span>菜品列表
					</h4>
				</div>
				<div class="up_page_con">
					<div class="ex_tab2" role="tabpanel" data-example-id="togglable-tabs">
						<div id="" class="up-tab-content">
							<div role="tabpanel" class="up-tab-pane up-active" id="mytab11" aria-labelledby="mytab11-tab">
								<div class="up-table-responsive">
									<div class="up-cq-table">
										<div class="up-cq-table-outer">
											<div class="up-cq-table-inner">
												<div class="up-clearfix table_head margin_bottom10">
													<div class="reference_search">
													<!-- 模糊查询菜单 -->
														<form class="up-form-inline" id="searchForm" method="post" action="${basePath }/food/foodList">
															<input type="hidden" id="pageNum" name="pageNum" value="1">
															<div class="up-form-group">
																<label for="" class="up-control-label">菜品类型:</label> 
																<select name="menuid" id="menuid" class="up-form-control" style="width: 171px">
																    <option value=""></option>
																    <c:forEach var="temp" items="${menuList }">
																    	<option value="${temp.menuId }" <c:if test="${searchParam.menuId.menuId == temp.menuId}">selected="selected"</c:if> >${temp.menuName }</option>
																    </c:forEach>
																</select>
																<label for="" class="up-control-label">菜品名称:</label> 
																<input type="text" class="up-form-control" id="foodName" name="foodName" <c:if test="${not empty searchParam.foodName }">value="${searchParam.foodName }"</c:if>  />
															</div>
															<div class="up-form-group">
																<button type="submit"   class="up-btn up-btn-primary">搜索</button>
															</div>
															<div class="up-form-group">
															<!-- 新增用户 -->
															<!-- <button type="button" id="addUser" onClick="handleUser(4,'4')" class="up-btn up-btn-primary up-btn-primary-red" data-toggle="modal" >新增</button> -->
															</div>
														</form>
													<!-- 模糊查询菜单 -->	
													</div>
												</div>
												<%-- <c:if test="${sessionScope.LOGIN_USER.userRole eq '1' }"> --%>
												<div class="up-clearfix table_head">
													<div class="reference_search">
														 <div class="up-form-group">
															<button type="submit" class="up-btn up-btn-primary up-btn-primary-red" data-toggle="modal"
																 onClick="showDialog('新增' , '${basePath}/food/toAddOrEditFood' , '470px')">新增</button>
														</div> 
													</div>
												</div>
												<%-- </c:if> --%>
												<table
													class="up-table up-table-bordered up-table-hover margin_bottom10 up-text-center">
													<thead>
														<tr class="up-active">
															<th>编号</th>
															<th>菜品类型</th>
															<th>菜品名称</th>
															<th>菜品价格</th>
															<th>菜品图片</th>
															<th>菜品描述</th>
															<th>操作</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="temp" items="${page.dataList }" varStatus="status">
															<tr>
																<td>${status.index + 1}</td>
																<td>${temp.menuId.menuName }</td>
																<td>${temp.foodName}</td>
																<td>${temp.foodPrice}</td>
																<td><img src="${basePath }/${temp.foodPhoto}" style="width:80px;height:20px"/></td>
																<td>${temp.foodDescribe}</td>
																<td>
																	<!-- 修改，删除，重置密码     style="width: 408px;"-->
																	<a href="javascript:void(0)" onClick="showDialog('修改' , '${basePath}/food/toAddOrEditFood' , '470px')">修改</a>
																	<a href="javascript:void(0)" onClick="deleteFood('${temp.foodId }')">删除</a>
																</td>
															</tr>
														</c:forEach> 
													</tbody>
												</table>

												<div class="up-clearfix">
													<div class="up-pull-right">
														<%@include file="../../common/page.jsp"%>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</main>
		
		<!-- 侧栏提示工具容器 -->
		<div id="tooltip_box"></div>
		<!-- 侧栏提示工具容器 -->

		<!--    提示框 start -->
		<%@include file="../../common/msgBox.jsp"%>
		<!--    提示框 -->
		
		 <div class="up-modal up-fade" id="modalDialog"  data-drag="true" data-backdrop="static">
          <div class="up-modal-dialog up-modal-lg">
            <div class="up-modal-content">
              <div class="up-modal-header">
                <button type="button" class="up-close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="up-modal-title" id="modalDialogTitle">新增角色</h4>
              </div>
              <iframe id="modalDialogFrame"  width="100%" height="420px" frameborder="0"></iframe>
            </div>
          </div>
        </div>

	</div>
	
</body>

</html>
