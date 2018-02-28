<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../common/common.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <%@include file="../common/common-ui.jsp"%>
    
    <script type="text/javascript">
    
	$(document).ready(function() {
		document.onkeydown = function(e) {
			var ev = document.all ? window.event : e;
			if (ev.keyCode == 13) {
				doLogin();
			}
		}
	});

	function doLogin() {
		var loginName = $("#loginName").val();
		var pwd = $("#pwd").val();
		var validateCode = $("#validateCode").val();

		if (!checkBlank($("#loginName").val())) {
			$("#msgBoxInfo").html("请输入登录名");
			$("#msgBox").modal('show');
			return;
		}

		if (!checkBlank($("#pwd").val())) {
			$("#msgBoxInfo").html("请输入登录密码");
			$("#msgBox").modal('show');
			return;
		}
		
		if (!checkBlank($("#validateCode").val())) {
			$("#msgBoxInfo").html("请输入验证码");
			$("#msgBox").modal('show');
			return;
		}

		$.ajax({
			type : 'POST',
			url : '${basePath}/userLogin',
			data : {
				'userPhone' : loginName,
				'userPassword' : pwd , 
				'validateCode' : validateCode
			},
			dataType : 'json',
			success : function(data) {
				if (data.success) {
					window.location.href = "${basePath}/";
				} else {
					$("#msgBoxInfo").html(data.msg);
					$("#msgBox").modal('show');
					refreshValidateCode();
				}
			},
			error : function(data) {
				$("#msgBoxInfo").html("程序执行出错");
				$("#msgBox").modal('show');
				refreshValidateCode();
			}
		});

	}
	document.onkeydown = keyListener;
	function keyListener(e) {
		e = e ? e : event;// 兼容FF
		if (e.keyCode == 13) {
			doLogin();
		}
	}
	
	
	function refreshValidateCode(){
		$("#validateCodeImg").attr("src" , basePath+"/validate?date="+new Date())
	}
</script>
</head>

<body>
    <div id="wrap" class="">
        <div class="login_main">
            <div class="up-container">
                <div class="up-inner up-clearfix">
                    <div class="up-pull-right login_box">
                        <div class="login_box_head">
                            <img src="${basePath }/resources/images/logo.png">
                            <a href="#">用户登录</a>
                        </div>
                        <div class="login_box_con">
                            <div class="login_box_outer">
                                <div class="login_box_inner">
                                    <form class="up-form-horizontal">
                                        <div class="up-form-group up-cq-mar">
                                            <label for="" class="up-col-sm-2 up-control-label">用户名</label>
                                            <div class="up-col-sm-10">
                                                <input type="text" class="up-form-control" id="loginName" name="loginName" placeholder="请输入用户名">
                                            </div>
                                        </div>
                                        <div class="up-form-group up-cq-mar">
                                            <label for="" class="up-col-sm-2 up-control-label">密码</label>
                                            <div class="up-col-sm-10">
                                                <input type="password" class="up-form-control" id="pwd" name="pwd" placeholder="请输入密码">
                                            </div>
                                        </div>
                                        <div class="up-form-group up-cq-mar">
                                            <label for="" class="up-col-sm-2 up-control-label">验证码</label>
                                            <div class="up-col-sm-7">
                                                <input type="text" class="up-form-control" id="validateCode" name="validateCode" placeholder="请输入验证码">
                                            </div>
                                            <div class="up-col-sm-3" style="padding-left:0px">
                                                <img id="validateCodeImg" src="${basePath }/validate" onClick="refreshValidateCode()" />
                                            </div>
                                        </div>
                                        <button type="button" onClick="doLogin()" class="up-btn up-btn-lg up-btn-block up-btn-blue up-cq-mar">登录</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="up-login-cq-footer">
        <img src="${basePath }/resources/images/cloud.png" width="100%">
    </div>
    
    <!--    提示框 start -->
        	<%@include file="../common/msgBox.jsp" %> 
        <!--    提示框 -->
</body>

</html>
