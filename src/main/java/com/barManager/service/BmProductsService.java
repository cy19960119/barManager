package com.barManager.service;

import java.util.List;

import com.barManager.entity.BmProducts;
import com.barManager.vo.PaginationParamVO;


public interface BmProductsService {

	/**
	 * 分页查询用户信息
	 * @author chenyang
	 * @return
	 * */
	
	public List<BmProducts> queryBmProductsPagination(PaginationParamVO ParamVO);

}
