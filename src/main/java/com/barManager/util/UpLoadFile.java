package com.barManager.util;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;


public class UpLoadFile {

	/**
	 * 上传单个文件
	 * @param file
	 */
	public static ResponseBean<String> uploadSingleFile(HttpServletRequest request,MultipartFile file) {
		ResponseBean<String> responseBean=new ResponseBean<String>();
		if (file.isEmpty()) {
          responseBean.setErrorCode(ErrorCode.FILE_UPLOAD_EXCEPTION);
          responseBean.setErrorMessage("上传文件为空");
        }

        try {
        	byte[] bytes = file.getBytes();
            
            Path path = Paths.get(Constant.UPLOADED_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);
            responseBean.setData("上传文件成功！");
            responseBean.setEntityMessage(path.toString());
            System.out.println("上传文件成功！");
          
//            byte[] bytes = file.getBytes();
//            String upLoadDir=request.getSession().getServletContext().getRealPath("upload");
//            File testfile=new File(upLoadDir);
//            if(!testfile.exists()){
//            	testfile.mkdir();
//            }
//            Path path = Paths.get(upLoadDir+"\\" + file.getOriginalFilename());
//            Files.write(path, bytes);
//            System.out.println(path);
//            responseBean.setEntityMessage(path.toString());
//            responseBean.setData("上传文件成功！");
//            System.out.println("上传文件成功！");

          
        } catch (IOException e) {
            e.printStackTrace();
            responseBean.setErrorCode(ErrorCode.FILE_UPLOAD_EXCEPTION);
            responseBean.setErrorMessage("上传文件错误");
            System.out.println("上传文件错误！");
        }
        
        return responseBean;

      
	}
}
