package com.barManager.service;

import com.barManager.entity.BmProducts;
import com.barManager.vo.PaginationParamVO;
import com.sun.tools.javac.util.List;

public interface BmProductsService {

	/**
	 * 分页查询用户信息
	 * @author chenyang
	 * @return
	 * */
	
	public List<BmProducts> queryBmProductsPagination(PaginationParamVO ParamVO);

}
