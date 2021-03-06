package com.barManager.vo;

import org.springframework.web.multipart.MultipartFile;

public class BmProductsVO {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column BM_PRODUCTS.PRODUCT_ID
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    private String productId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column BM_PRODUCTS.PRODUCT_NAME
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    private String productName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column BM_PRODUCTS.PRODUCT_TYPE
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    private String productType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column BM_PRODUCTS.PRODUCT_PRICE
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    private String productPrice;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column BM_PRODUCTS.PRODUCT_PICTURE
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    private MultipartFile productPicture;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column BM_PRODUCTS.PRODUCT_DESCRIBE
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    private String productDescribe;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column BM_PRODUCTS.PRODUCT_COUNT
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    private String productCount;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column BM_PRODUCTS.PRODUCT_ID
     *
     * @return the value of BM_PRODUCTS.PRODUCT_ID
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    public String getProductId() {
        return productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column BM_PRODUCTS.PRODUCT_ID
     *
     * @param productId the value for BM_PRODUCTS.PRODUCT_ID
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    public void setProductId(String productId) {
        this.productId = productId == null ? null : productId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column BM_PRODUCTS.PRODUCT_NAME
     *
     * @return the value of BM_PRODUCTS.PRODUCT_NAME
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    public String getProductName() {
        return productName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column BM_PRODUCTS.PRODUCT_NAME
     *
     * @param productName the value for BM_PRODUCTS.PRODUCT_NAME
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    public void setProductName(String productName) {
        this.productName = productName == null ? null : productName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column BM_PRODUCTS.PRODUCT_TYPE
     *
     * @return the value of BM_PRODUCTS.PRODUCT_TYPE
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    public String getProductType() {
        return productType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column BM_PRODUCTS.PRODUCT_TYPE
     *
     * @param productType the value for BM_PRODUCTS.PRODUCT_TYPE
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    public void setProductType(String productType) {
        this.productType = productType == null ? null : productType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column BM_PRODUCTS.PRODUCT_PRICE
     *
     * @return the value of BM_PRODUCTS.PRODUCT_PRICE
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    public String getProductPrice() {
        return productPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column BM_PRODUCTS.PRODUCT_PRICE
     *
     * @param productPrice the value for BM_PRODUCTS.PRODUCT_PRICE
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    public void setProductPrice(String productPrice) {
        this.productPrice = productPrice == null ? null : productPrice.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column BM_PRODUCTS.PRODUCT_PICTURE
     *
     * @return the value of BM_PRODUCTS.PRODUCT_PICTURE
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
   
    
   
    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column BM_PRODUCTS.PRODUCT_DESCRIBE
     *
     * @return the value of BM_PRODUCTS.PRODUCT_DESCRIBE
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    public String getProductDescribe() {
        return productDescribe;
    }

    public MultipartFile getProductPicture() {
		return productPicture;
	}

	public void setProductPicture(MultipartFile productPicture) {
		this.productPicture = productPicture;
	}

	/**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column BM_PRODUCTS.PRODUCT_DESCRIBE
     *
     * @param productDescribe the value for BM_PRODUCTS.PRODUCT_DESCRIBE
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    public void setProductDescribe(String productDescribe) {
        this.productDescribe = productDescribe == null ? null : productDescribe.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column BM_PRODUCTS.PRODUCT_COUNT
     *
     * @return the value of BM_PRODUCTS.PRODUCT_COUNT
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    public String getProductCount() {
        return productCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column BM_PRODUCTS.PRODUCT_COUNT
     *
     * @param productCount the value for BM_PRODUCTS.PRODUCT_COUNT
     *
     * @mbggenerated Wed Sep 20 15:40:26 CST 2017
     */
    public void setProductCount(String productCount) {
        this.productCount = productCount == null ? null : productCount.trim();
    }
}