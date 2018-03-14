package com.barManager.controller.exception;

/**
 * 异常类
 *
 */
public class LunaException extends Exception {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6638752890080097020L;

	private String errorCode;
	
	public LunaException(String errorCode, String errorMsg){
		super(errorMsg);
		this.errorCode = errorCode;
	}
	
	
	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}
}
