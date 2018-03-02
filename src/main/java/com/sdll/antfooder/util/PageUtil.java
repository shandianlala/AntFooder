package com.sdll.antfooder.util;

import java.util.List;
import com.sdll.antfooder.vo.PageConfig;
import com.sdll.antfooder.vo.PageVo;

public class PageUtil {

	public static PageVo getPageList(PageConfig page , List list ){
		PageVo pageVo = new PageVo();
		//查询到的list集合
		pageVo.setDataList(list);
		//设置当前页码
		pageVo.setPageNum(page.getPageNum());
		//总数据条数量
		pageVo.setDataCount(page.getRowCount());
		//总页数
		Integer pageConut = page.getRowCount()/page.getPageSize();
		pageVo.setPageCount(page.getRowCount()%page.getPageSize()==0 ? pageConut : pageConut+1 );
		//是否有上一页，如果页数大于1，说明有 上一页 
		pageVo.setHasPrePage(page.getPageNum() > 1);
		if(pageVo.getHasPrePage()){
			//给上一页设定值
			pageVo.setPrePage(page.getPageNum() - 1);
		}
		//是否有下一页，如果当前页数 小于   页的总数，说明有下一页，
		pageVo.setHasNextPage(page.getPageNum() < pageVo.getPageCount());
		if(pageVo.getHasNextPage()){
			//给下一页设定值
			pageVo.setNextPage(page.getPageNum() + 1);
		}
		return pageVo;
	}
}
