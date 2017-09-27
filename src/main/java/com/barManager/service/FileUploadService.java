package com.barManager.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.barManager.controller.exception.BohaiException;

/**
 * 上传文件接口
 * @author chenyang
 * */
public interface FileUploadService {

	/**
	 * 上传文件
	 * @param file
	 * @param request 
	 * @return
	 * */
	public String upload(MultipartFile file, HttpServletRequest request)throws BohaiException;
}
