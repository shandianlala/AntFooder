<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="common.jsp" %>

<div class="sidebar">
    <nav class="sidenav">
        <ul class="nav_ul" id="accordion">
            <li>
                <a class="no_link sidebtn" href="javascript:void(0);">
                    <span class="icon-menu"></span>
                </a>
            </li>
            <li>
                <a class="bor-left-nav-btm" href="${basePath }/" data-toggle="tooltip" data-container="#tooltip_box"
                   data-placement="right" title="按钮">
                    <div class="up-pull-left">
                        <span class="icon-shouye"></span>
                        首页
                    </div>
                </a>
            </li>
			
			
                <li>
                    <a class="bor-left-nav-btm" href="#collapse_form${vo.thisMenu.menuUrl }" data-toggle="collapse"
                       aria-expanded="false">
                        <div class="up-pull-left">
                            <span class="icon-th-large" data-toggle="tooltip" data-container="#tooltip_box"
                                  data-placement="right" title="菜单"></span>
                             菜式管理
                        </div>
                        <div class="up-pull-right">
                            <span class="icon-down-open"></span>
                        </div>
                    </a>
                    <ul class="nav_ul2 up-collapse" id="collapse_form" aria-expanded="false">

                            <li>
                                <a class="no_link" href="${basePath}/menu/menuList" data-toggle="tooltip"
                                   data-container="#tooltip_box" data-placement="right" title=" 菜单列表">
                                    <div class="up-pull-left">
                                        <span class="icon-right-dir"></span>
                                            菜单列表
                                    </div>
                                </a>
                            </li>
                     		                            <li>
                                <a class="no_link" href="${basePath}/food/foodList" data-toggle="tooltip"
                                   data-container="#tooltip_box" data-placement="right" title="菜品列表">
                                    <div class="up-pull-left">
                                        <span class="icon-right-dir"></span>
                                            菜品列表
                                    </div>
                                </a>
                            </li>
                    </ul>

                </li>
<!--  -->

            <c:forEach var="vo" items="${volist}">
                <li>
                    <a class="bor-left-nav-btm" href="#collapse_form${vo.thisMenu.menuUrl }" data-toggle="collapse"
                       aria-expanded="false">
                        <div class="up-pull-left">
                            <span class="icon-th-large" data-toggle="tooltip" data-container="#tooltip_box"
                                  data-placement="right" title="表单"></span>
                                ${vo.thisMenu.menuName}
                        </div>
                        <div class="up-pull-right">
                            <span class="icon-down-open"></span>
                        </div>
                    </a>
                    <ul class="nav_ul2 up-collapse" id="collapse_form${vo.thisMenu.menuUrl }" aria-expanded="false">

                       <c:forEach var="c" items="${vo.childMenus }">
                            <li>
                                <a class="no_link" href="${basePath}${c.menuUrl}" data-toggle="tooltip"
                                   data-container="#tooltip_box" data-placement="right" title="多列内联表单">
                                    <div class="up-pull-left">
                                        <span class="icon-right-dir"></span>
                                            ${c.menuName}
                                    </div>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>

                </li>
            </c:forEach>

        </ul>
    </nav>
</div>