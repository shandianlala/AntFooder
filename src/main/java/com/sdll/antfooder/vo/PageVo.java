package com.sdll.antfooder.vo;

import java.io.Serializable;
import java.util.List;

public class PageVo<E> implements Serializable{

	private List<E> dataList;
	
	private Integer dataCount;
	
	private Integer pageCount;
	
	private Integer pageNum;
	
	private Boolean hasNextPage;
	
	private Integer nextPage;
	
	private Boolean hasPrePage;
	
	private Integer prePage;

	public List<E> getDataList() {
		return dataList;
	}

	public void setDataList(List<E> dataList) {
		this.dataList = dataList;
	}

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	public Integer getPageNum() {
		return pageNum;
	}

	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}

	public Boolean getHasNextPage() {
		return hasNextPage;
	}

	public void setHasNextPage(Boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}

	public Integer getNextPage() {
		return nextPage;
	}

	public void setNextPage(Integer nextPage) {
		this.nextPage = nextPage;
	}

	public Boolean getHasPrePage() {
		return hasPrePage;
	}

	public void setHasPrePage(Boolean hasPrePage) {
		this.hasPrePage = hasPrePage;
	}

	public Integer getPrePage() {
		return prePage;
	}

	public void setPrePage(Integer prePage) {
		this.prePage = prePage;
	}

	public Integer getDataCount() {
		return dataCount;
	}

	public void setDataCount(Integer dataCount) {
		this.dataCount = dataCount;
	}

	
}
