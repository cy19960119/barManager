package com.barManager.service;

import java.util.List;

import com.barManager.entity.BmCarousel;
import com.barManager.vo.PaginationParamVO;

public interface BmCarouselsService {
	/**
	 * 分页查询轮转图信息
	 * @author chenyang
	 * @return
	 * */
	
	public List<BmCarousel> queryBmCarouselsPagination(PaginationParamVO ParamVO);
}
