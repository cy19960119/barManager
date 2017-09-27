package com.barManager.service.impl;

import java.io.File;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.barManager.controller.exception.BohaiException;
import com.barManager.service.FileUploadService;

@Service("productPictureUploadService")
public class productPictureUploadService implements FileUploadService{

	
	
	@Override
	public String upload(MultipartFile file, HttpServletRequest request) throws BohaiException {
		// TODO Auto-generated method stub
		System.out.println("开始");
		String path=request.getSession().getServletContext().getRealPath("upload");
		File testfile=new File(path);
		if(!testfile.exists()) {
			testfile.mkdirs();
		}
//		String fileName=file.getOriginalFilename();
		String fileName=new Date().getTime()+".jpg";
		String realPath=path+"/"+fileName;
		File targetFile=new File(realPath);
		try {
			file.transferTo(targetFile);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return realPath;
	}
}
