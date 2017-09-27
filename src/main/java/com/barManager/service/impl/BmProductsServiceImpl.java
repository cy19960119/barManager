package com.barManager.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barManager.dao.BmProductsMapper;
import com.barManager.entity.BmProducts;
import com.barManager.service.BmProductsService;
import com.barManager.vo.PaginationParamVO;


@Service("bmProductsService")
public class BmProductsServiceImpl implements BmProductsService{

	@Autowired
	private BmProductsMapper bmProductsMapper;
	
	@Override
	public List<BmProducts> queryBmProductsPagination(PaginationParamVO ParamVO) {
		// TODO Auto-generated method stub
		List<BmProducts> BmProductsList = this.bmProductsMapper.queryBmProducts(null);
		return BmProductsList;
	}

}
