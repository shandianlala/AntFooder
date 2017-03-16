package com.sdll.antfooder.util;

import java.io.Serializable;
import java.util.List;

public class ExecResult implements Serializable{
	
	private boolean success;
	
	private String msg;
	
	private List dataList;

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public List getDataList() {
		return dataList;
	}

	public void setDataList(List dataList) {
		this.dataList = dataList;
	}
	
}
