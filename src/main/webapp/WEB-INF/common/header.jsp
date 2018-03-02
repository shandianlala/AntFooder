<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="common.jsp"%>

<div class="up-container-fluid">
        <div class="up-navbar-header">
            <button type="button" class="up-navbar-toggle up-collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="up-sr-only">Toggle navigation</span>
                <span class="up-icon-bar"></span>
                <span class="up-icon-bar"></span>
                <span class="up-icon-bar"></span>
            </button>
            <div class="nav_head">
                <div class="logo">
                    <a class="no_link" href="${basePath }/">
                        <img class="middle" src="${basePath }/resource/img/logo.png" height="24">
                    </a>
                </div>
            </div>
        </div>
        <div class="up-collapse up-navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="up-nav up-navbar-nav up-navbar-right">
                <li>
                    <span class="up-cq-head">欢迎您！&nbsp;<span style="font-weight:bold">${LOGIN_USER.userPhone} <%-- , 您的IP : ${sessionScope.LOGIN_USER.fullIp }  --%></span>
                </li>
                <li>
                    <a href="${basePath }/user/toEdit?oper=3">修改密码</a>
                </li>
                <li>
                    <a href="${basePath }/logOut">退出 <span class="icon-zhuxiao"></span></a>
                </li>
            </ul>
        </div>
    </div>