<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/common.jsp"%>
<%@include file="../../common/common-ui.jsp"%>
<html>

<script type="text/javascript">
	/* 新增菜单 */
	function addMenu(){
		/* if(checkBlank(menuId)){
			editMenu(menuId);
			return;
		} */
		var menuName = $("#menuName").val();
		if(!checkBlank(menuName)){
			$("#msgBoxInfo").html("请填写菜单名称");
			$("#msgBox").modal('show');
			return;
		}
		if(!checkLengthBetween(menuName , 2, 10) ){
			$("#msgBoxInfo").html("菜单名称只允许数字字母,长度2-10位");
			$("#msgBox").modal('show');
			return;
		}
		var menuType = $("#menuType").find("option:selected").val();
		if(!checkBlank(menuType)){
			$("#msgBoxInfo").html("请选择菜单类型");
			$("#msgBox").modal('show');
			return;
		}
		var menuPhoto = $("#menuPhoto").val();
		if(!checkBlank(menuPhoto)){
			$("#msgBoxInfo").html("请选择菜单图片");
			$("#msgBox").modal('show');
			return;
		}
		var menuOther = $("#menuOther").val();
		if(!checkBlank(menuOther)){
			$("#msgBoxInfo").html("请填写菜单描述");
			$("#msgBox").modal('show');
			return;
		}
		$("#msgBoxConfirmInfo").html("确定要新增菜单吗?");
		$("#msgBoxConfirm").modal('show');
		$("#msgBoxConfirmButton").on('click' , function(){
			$("#msgBoxConfirm").modal('hide');
			var formData = new FormData($("#dataForm")[0])
			$.ajax({
				type : 'POST',
				url : '${basePath}/menu/addMenu',
				data : formData,
				processData:false,
                contentType:false,
                dataType : 'json',
				success : function(data) {
					if (data.success) {
						$("#msgBoxInfo").html(data.msg);
						$("#msgBox").modal('show');
						$("#msgBoxOKButton").on('click' , function(){
							$("#msgBox").modal('hide');
							parent.window.location.reload();
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
	
	function editMenu(id){
		var menuName = $("#menuName").val();
		if(!checkBlank(menuName)){
			$("#msgBoxInfo").html("请填写菜单名称");
			$("#msgBox").modal('show');
			return;
		}
		if(!checkLengthBetween(menuName , 2, 10) ){
			$("#msgBoxInfo").html("菜单名称只允许数字字母,长度2-10位");
			$("#msgBox").modal('show');
			return;
		}
		var menuType = $("#menuType").find("option:selected").val();
		if(!checkBlank(menuType)){
			$("#msgBoxInfo").html("请选择菜单类型");
			$("#msgBox").modal('show');
			return;
		}
		var menuPhoto = $("#menuPhoto").val();
		if(!checkBlank(menuPhoto)){
			$("#msgBoxInfo").html("请选择菜单图片");
			$("#msgBox").modal('show');
			return;
		}
		var menuOther = $("#menuOther").val();
		if(!checkBlank(menuOther)){
			$("#msgBoxInfo").html("请填写菜单描述");
			$("#msgBox").modal('show');
			return;
		}
		$("#msgBoxConfirmInfo").html("确定要修改菜单信息吗?");
		$("#msgBoxConfirm").modal('show');
		$("#msgBoxConfirmButton").on('click' , function(){
			$("#msgBoxConfirm").modal('hide');
			var formData = new FormData($("#dataForm")[0])
			$.ajax({
				type : 'POST',
				url : '${basePath}/menu/editMenu',
				data : formData,
				dataType : "json",
				processData:false,
                contentType:false,
				success : function(data) {
					if (data.success) {
						$("#msgBoxInfo").html(data.msg);
						$("#msgBox").modal('show');
						$("#msgBoxOKButton").on('click' , function(){
							$("#msgBox").modal('hide');
							parent.window.location.reload();
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
	
</script>

<head>
</head>

<body>

		<div class="up-modal-body">
		<form id="dataForm" class="up-form-horizontal">
			<input type="hidden" id="id" name="id" value="${user.id }" />
			<div class="up-form-group">
				<label for="" class="up-col-sm-2 up-control-label">
					<span class="up-cq-red-star">*</span>菜单名称
				</label>
				<div class="up-col-sm-7">
					<input type="text" class="up-form-control" id="menuName" name="menuName" placeholder="请输入菜单名称" <c:if test="${not empty  user }">readOnly="true"</c:if> value="${user.loginName }">
				</div>
			</div>
			<div class="up-form-group">
				<label for="" class="up-col-sm-2 up-control-label">
					<span class="up-cq-red-star">*</span>菜单类型
				</label>
				<div class="up-col-sm-4">
					<select name="menuType" id="menuType" class="up-form-control"  style="width:260px">
						<option value="">请选择</option>
						<option value="1">热卖</option>
						<option value="2">营养早餐  8:00-10:30</option>
						<option value="3">丰富主食  10:30-22:00</option>
						<option value="4">下午茶  14:00-17:00</option>
					</select>
				</div>
			</div>
			<div class="up-form-group">
				<label for="" class="up-col-sm-2 up-control-label">
					<span class="up-cq-red-star">*</span>菜单图片
				</label>
				<div class="up-col-sm-7">
					<input type="file" class="up-form-control" id="menuPhoto" name="file" style="width:260px" placeholder="请选择菜单图片" <c:if test="${not empty  menu }">readOnly="true"</c:if>  value="${user.uname }">
				</div>
			</div>
			<div class="up-form-group">
				<label for="" class="up-col-sm-2 up-control-label">
					<span class="up-cq-red-star"></span>菜单描述
				</label>
				<div class="up-col-sm-7">
					<textarea rows="8" class="up-form-control" id="menuOther" name="menuOther">${menu.menuOther }</textarea>
				</div>
			</div>
		</form>
	</div>
	<div class="up-modal-footer up-modal-footer1">
		<button type="button" class="up-btn up-btn-primary" onClick="addMenu()">保存</button>
		<button type="button" class="up-btn up-btn-default" onClick="parent.window.hideDialog()">取消</button>
	</div>
	
	<!--    提示框 start -->
		<%@include file="../../common/msgBox.jsp"%>
		<!--    提示框 -->
	
</body>

</html>
