package com.barManager.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.barManager.dao.BmProductsMapper;
import com.barManager.entity.BmProducts;
import com.barManager.service.BmProductsService;
import com.sun.tools.javac.util.List;

@Controller
public class BmProductController {
	static Logger logger=Logger.getLogger(BmProductController.class);
	
	@Autowired
	private BmProductsMapper bmProductsMapper;
	
	@Autowired
	private BmProductsService bmProductsService;
 	
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
}
