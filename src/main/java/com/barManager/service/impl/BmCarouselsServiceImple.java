package com.barManager.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.barManager.dao.BmCarouselMapper;
import com.barManager.entity.BmCarousel;
import com.barManager.service.BmCarouselsService;
import com.barManager.vo.PaginationParamVO;

@Service("bmCarouselsService")
public class BmCarouselsServiceImple implements BmCarouselsService{
	
	@Autowired
	private BmCarouselMapper bmCarouselMapper;
	@Override
	public List<BmCarousel> queryBmCarouselsPagination(PaginationParamVO ParamVO) {
		// TODO Auto-generated method stub
		List<BmCarousel> bmCarouselList=bmCarouselMapper.queryBmCarousels(null);
		return bmCarouselList;
	}

}
