package com.barManager.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.barManager.controller.exception.LunaException;
import com.barManager.dao.BmProductsMapper;
import com.barManager.entity.BmProducts;
import com.barManager.service.BmProductsService;
import com.barManager.service.FileUploadService;



@Controller
public class BmProductController {
	static Logger logger=Logger.getLogger(BmProductController.class);
	
	@Autowired
	private BmProductsMapper bmProductsMapper;
	
	@Autowired
	private BmProductsService bmProductsService;
 	
	@Autowired
	private FileUploadService productPictureUploadService;
	
	/**
	 * 分页查询所有商品信息
	 * @author chenyang
	 * 
	 * */
	@RequestMapping(value="queryBmProducts")
	@ResponseBody
	public List<BmProducts> queryBmProductsPagination(){
		List<BmProducts> bmProductsList = this.bmProductsService.queryBmProductsPagination(null);
		return bmProductsList;
	}
	
	/**
	 * 新增商品信息
	 * @author chenyang
	 * @throws LunaException 
	 * */
	@RequestMapping(value="saveProductInfo")
	@ResponseBody
	public void saveProductInfo(@RequestBody(required = true) BmProducts param) throws LunaException {  
		bmProductsMapper.insert(param);
	}
	
	/**
	 * 上传图片
	 * @author chenyang
	 * @throws LunaException 
	 * */
	@RequestMapping(value="uploadFile")
	@ResponseBody
	public Map<String,String> uploadFile(@RequestParam("file_data")MultipartFile file, HttpServletRequest request) throws LunaException {
		String picturePath=this.productPictureUploadService.upload(file, request);
		Map<String,String> map=new HashMap<String,String>();
		map.put("picturepath",picturePath);
		return map;
	}

	/**
	 * 修改商品信息
	 * @author chenyang
	 * */
	@RequestMapping(value="alterProductInfo")
	@ResponseBody
	public void alterProductInfo(@RequestBody(required=true) BmProducts product)throws LunaException{
		this.bmProductsMapper.updateByPrimaryKey(product);
	}
}
