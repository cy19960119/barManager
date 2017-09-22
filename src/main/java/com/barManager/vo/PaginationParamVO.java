package com.barManager.vo;

/**
 * 分页查询参数
 * @author chenyang
 * */
public class PaginationParamVO {

	private Integer pageNumber;
	
	private Integer pageSize;
	
	private Long offset;
	
	private Long pages;
	
	private String orderBy;
	
	private String sort;

	public Integer getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(Integer pageNumber) {
		this.pageNumber = pageNumber;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Long getOffset() {
		return offset;
	}

	public void setOffset(Long offset) {
		this.offset = offset;
	}

	public Long getPages() {
		return pages;
	}

	public void setPages(Long pages) {
		this.pages = pages;
	}

	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}
	
}
