<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@include file="../common/common.jsp" %> 
<html>
<%@include file="../common/common-ui.jsp" %>

<head>
</head>
<script type="text/javascript">
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
<body>
    <div id="wrap" class="">
        <!--    头部 和  菜单 start -->
        	 <%@include file="../common/headAndLeft.jsp" %> 
        <!--    头部 和  菜单 end -->
        
        <!-- 内容start -->
        <main class="main up-container-fluid" >
        	<input type="hidden" id="email" value=""/>
        	<div class="up-box1-rc" style="width:100%; text-align:center;">
                <b style="padding-top:20px; padding-bottom:15px; font-size:25px; color:#666; display:inline-block;">蚂蚁食客后台管理系统</b>
        	</div>
        	<div class="up-tab-content">
			<div class="up-tab-pane up-active" id="tabs1">
				<div class="border_btm first_title">
					<h4 class="up-top-cq-color">
						<span class="icon-right-dir"></span>每日早报：
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
												</div>
												<table
													class="up-table up-table-bordered up-table-hover margin_bottom10 up-text-center">
													<thead>
														<tr class="up-active">
															<th>编号</th>
															<th>会议室</th>
															<th>主题</th>
															<th>日期</th>
															<th>时间段</th>
															<th>审核时间</th>
															<th>操作</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="app" items="${page.dataList }" varStatus="status">
															<tr>
																<td>${status.index + 1}</td>
																<td>${app.placeName}</td>
																<td>${app.subject}</td>
																<td>${app.startDate}</td>
																<td>${app.startTime } - ${app.endTime }</td>
																<td>${app.auditingDate}</td>
																<td>
																	<a href="javascript:void(0)" onClick="showDialog('查看申请' , '${basePath}/view/viewApp?id=${app.id }' , '470px')">查看</a> 
																	<c:if test="${(app.appState == 2) && (app.uidMinutes eq LOGIN_USER.id ) && (app.minutesState != 2)}">
																		<a href="javascript:void(0)" onClick="showDialog('录入纪要' , '${basePath}/view/addMinutes?id=${app.id }' , '470px')">
																			<c:if test="${app.minutesState == 0 }">录入纪要</c:if>
																			<c:if test="${app.minutesState == 1 }">继续录入纪要</c:if>
																		</a>
																	</c:if>
																</td>
															</tr>
														</c:forEach>
													</tbody>
												</table>

												<div class="up-clearfix">
													<div class="up-pull-right">
														<%-- <%@include file="/common/page.jsp"%> --%>
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
    </div>
    <!-- 侧栏提示工具容器 -->
		<div id="tooltip_box"></div>
		<!-- 侧栏提示工具容器 -->

		<!--    提示框 start -->
		<%@include file="../common/msgBox.jsp"%>
		<!--    提示框 -->
		
		 <div class="up-modal up-fade" id="modalDialog"  data-drag="true" data-backdrop="static">
          <div class="up-modal-dialog up-modal-lg">
            <div class="up-modal-content">
              <div class="up-modal-header">
                <button type="button" class="up-close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="up-modal-title" id="modalDialogTitle">申请审核</h4>
              </div>
              <iframe id="modalDialogFrame"  width="100%" height="420px" frameborder="0"></iframe>
            </div>
          </div>
        </div>
</body>

</html>
