package com.barManager.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.barManager.controller.exception.LunaException;
import com.barManager.dao.BmCarouselMapper;
import com.barManager.entity.BmCarousel;
import com.barManager.entity.BmProducts;
import com.barManager.service.BmCarouselsService;
import com.barManager.util.ResponseBean;
import com.barManager.util.UpLoadFile;
@Controller
public class BmCarouselController {

	@Autowired
	private BmCarouselMapper bmCarouselMapper;
	
	@Autowired
	private BmCarouselsService bmCarouselsService;
	
	 @RequestMapping(value={"/", "toCarousel"})
	    public String toHome(){
	    	return "carousel";
	    }
	/**
	 * 上传图片
	 * @author chenyang
	 * @throws LunaException 
	 * */
	@RequestMapping(value="uploadCarousel")
	@ResponseBody
	public ResponseBean<String> upLoadFile(@RequestParam("image")MultipartFile file,HttpServletRequest request){
		
		ResponseBean<String> responseBean=new ResponseBean<String>();
		responseBean = UpLoadFile.uploadSingleFile(request,file);
		BmCarousel bmCarousel = new BmCarousel();
		bmCarousel.setCarouselPath(responseBean.getEntityMessage());
		bmCarousel.setType("0");
		bmCarouselMapper.insert(bmCarousel);
		return responseBean;
	}
	
	/**
	 * 分页查询所有轮转图信息
	 * */
	@RequestMapping(value="queryBmCarousels")
	@ResponseBody
	public List<BmCarousel> queryBmBmCarouselsPagination(){
		List<BmCarousel> bmCarouselList = this.bmCarouselsService.queryBmCarouselsPagination(null);
		return bmCarouselList;
	}
	
}
