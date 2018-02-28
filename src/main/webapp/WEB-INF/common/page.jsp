<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="common.jsp"%>

                                    <div class="up-clearfix pagination_box">
                                    	<span class="up-pull-left">共有${page.dataCount }条数据,页次:${page.pageNum  }/${page.pageCount == 0 ? 1 : page.pageCount }&emsp;</span>
                                        <ul class="up-pagination up-pagination-sm up-pull-left">
                                        	<c:if test="${!page.hasPrePage }">
	                                            <li class="up-disabled">
	                                                <a href="javascript:void(0)" aria-label="Previous">
	                                                    <span aria-hidden="true">&lt;&lt;上一页</span>
	                                                </a>
	                                            </li>
                                            </c:if>
                                            <c:if test="${page.hasPrePage }">
	                                            <li>
	                                                <a href="javascript:toPage(${page.prePage})" aria-label="Previous">
	                                                    <span aria-hidden="true">&lt;&lt;上一页</span>
	                                                </a>
	                                            </li>
                                            </c:if>
                                            
                                            <c:if test="${page.pageNum <=3  &&  page.pageCount >= 5}">
                                            	<c:forEach var = "pgNum" begin="1" end="5">
                                            		<li <c:if test="${page.pageNum == pgNum }">class="up-active"</c:if> >
                                                		<a href="javascript:toPage(${pgNum})">${pgNum}</a>
                                            	    </li>
                                            	</c:forEach>
                                            </c:if>
                                            <c:if test="${page.pageNum <=3 &&  page.pageCount < 5}">
                                            	<c:forEach var = "pgNum" begin="1" end="${page.pageCount  }">
                                            		<li <c:if test="${page.pageNum == pgNum }">class="up-active"</c:if> >
                                                		<a href="javascript:toPage(${pgNum})">${pgNum}</a>
                                            	    </li>
                                            	</c:forEach>
                                            </c:if>
                                            
                                            <c:if test="${page.pageNum >3 &&  page.pageCount >= page.pageNum +2 }">
                                            	<c:forEach var = "pgNum" begin="${page.pageNum -2 }" end="${page.pageNum +2 }">
                                            		<li <c:if test="${page.pageNum == pgNum }">class="up-active"</c:if> >
                                                		<a href="javascript:toPage(${pgNum})">${pgNum}</a>
                                            	    </li>
                                            	</c:forEach>
                                            </c:if>
                                            <c:if test="${page.pageNum >3 &&  page.pageCount < page.pageNum +2 }">
                                            	<c:forEach var = "pgNum" begin="${ (page.pageCount -4) < 1 ?  1 : (page.pageCount -4)  }" end="${page.pageCount }">
                                            		<li <c:if test="${page.pageNum == pgNum }">class="up-active"</c:if> >
                                                		<a href="javascript:toPage(${pgNum})">${pgNum}</a>
                                            	    </li>
                                            	</c:forEach>
                                            </c:if>
                                            
                                            
                                            <c:if test="${!page.hasNextPage }">
	                                            <li  class="up-disabled">
	                                                <a href="javascript:void(0)" aria-label="Next">
	                                                    <span aria-hidden="true">下一页>>
	                                                    </span>
	                                                </a>
	                                            </li>
                                            </c:if>
                                            <c:if test="${page.hasNextPage }">
	                                            <li>
	                                                <a href="javascript:toPage(${page.nextPage})" aria-label="Next">
	                                                    <span aria-hidden="true">下一页>>
	                                                    </span>
	                                                </a>
	                                            </li>
                                            </c:if>
                                        </ul>
                                        <div class="up-pull-left">
                                                        <span  class="up-pull-left">转到</span>
                                                        <input  class="up-pull-left up-input-sm up-form-control" type="text" id="toPageNum" style="width:50px">                                            
                                                        <span  class="up-pull-left">页</span>
                                                        <button class="up-pull-left up-btn up-btn-primary up-btn-sm" onClick="goToPage()">确定</button>
                                                    </div>
                                    </div>




<script>
        	function toPage(page){
        		$("#pageNum").val(page);	
        		$("#searchForm").submit();			
			}
        	
        	function goToPage(){
        		var pageNum = $("#toPageNum").val();
        		if(pageNum == ""){
        			return ;
        		}
        		var inputStr =  /^[0-9]*$/;
				if(!inputStr.test(pageNum)){
					$("#msgBoxInfo").html("页数只能输入正整数");
					$('#msgBox').modal('show');
					return;
				}
				
				if(pageNum > ${page.pageCount}){
					$("#msgBoxInfo").html("输入的页数超过总页数");
					$('#msgBox').modal('show');
					return;
				}
				
				toPage(pageNum);
        	} 
        
        </script>
