package com.barManager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.barManager.dao.BmProductsTypeMapper;
import com.barManager.entity.BmProductsType;

@Controller
public class BmProductsTypeController {
	
	@Autowired
	private BmProductsTypeMapper bmProductsTypeMapper;	
	
	 @RequestMapping(value={"/", "toProductsType"})
	    public String toProductsType(){
	    	return "productstype";
	    }
	
	
	
	@RequestMapping(value="queryBmProductsType")
	@ResponseBody
	public List<BmProductsType> queryBmProductsType(){
		List<BmProductsType> bmProductsTypeList = bmProductsTypeMapper.queryBmProductsType(null);
		return bmProductsTypeList;
	}
}
