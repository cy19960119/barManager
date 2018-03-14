package com.barManager.util;

import java.nio.file.Path;

public class ResponseBean<T> {
    
	//错误码，默认0，没有错 
	private Integer errorCode=0;
	//错误信息
	private String errorMessage="";
	//返回值
	private T data;
	//携带信息
	private T entityMessage;
	public ResponseBean() {
		// TODO Auto-generated constructor stub
	}
	
	public ResponseBean(T value) {
		super();
		this.data = value;
	}
	public Integer getErrorCode() {
		return errorCode;
	}
	public void setErrorCode(Integer errorCode) {
		this.errorCode = errorCode;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	public T getEntityMessage() {
		return entityMessage;
	}

	public void setEntityMessage(T path) {
		this.entityMessage = path;
	}

		
	
	

}
