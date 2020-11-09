package com.spring.banzzack.dto;

public class ReviewDTO {
	private int REVIEW_NUM; // 리뷰번호
	private int PRODUCT_NUM; // 상품번호
	private int ORDERS_NUM; // 주문번호
	private String REVIEW_CONTENTS; // 리뷰내용
	private String USER_ID; // 사용자 아이디
	private String REVIEW_TIME; // 리뷰 시간
	private String REVIEW_IMG; // 리뷰 이미지
	private String REVIEW_TITLE; // 리뷰 제목
	
	
	public int getORDERS_NUM() {
		return ORDERS_NUM;
	}
	public void setORDERS_NUM(int oRDERS_NUM) {
		ORDERS_NUM = oRDERS_NUM;
	}
	public int getREVIEW_NUM() {
		return REVIEW_NUM;
	}
	public void setREVIEW_NUM(int rEVIEW_NUM) {
		REVIEW_NUM = rEVIEW_NUM;
	}
	public int getPRODUCT_NUM() {
		return PRODUCT_NUM;
	}
	public void setPRODUCT_NUM(int pRODUCT_NUM) {
		PRODUCT_NUM = pRODUCT_NUM;
	}
	public String getREVIEW_CONTENTS() {
		return REVIEW_CONTENTS;
	}
	public void setREVIEW_CONTENTS(String rEVIEW_CONTENTS) {
		REVIEW_CONTENTS = rEVIEW_CONTENTS;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getREVIEW_TIME() {
		return REVIEW_TIME;
	}
	public void setREVIEW_TIME(String rEVIEW_TIME) {
		REVIEW_TIME = rEVIEW_TIME;
	}
	public String getREVIEW_IMG() {
		return REVIEW_IMG;
	}
	public void setREVIEW_IMG(String rEVIEW_IMG) {
		REVIEW_IMG = rEVIEW_IMG;
	}
	public String getREVIEW_TITLE() {
		return REVIEW_TITLE;
	}
	public void setREVIEW_TITLE(String rEVIEW_TITLE) {
		REVIEW_TITLE = rEVIEW_TITLE;
	}
	@Override
	public String toString() {
		return "ReviewDTO [REVIEW_NUM=" + REVIEW_NUM + ", PRODUCT_NUM=" + PRODUCT_NUM + ", REVIEW_CONTENTS="
				+ REVIEW_CONTENTS + ", USER_ID=" + USER_ID + ", REVIEW_TIME=" + REVIEW_TIME + ", REVIEW_IMG="
				+ REVIEW_IMG + ", REVIEW_TITLE=" + REVIEW_TITLE + "]";
	}
	
	
	
	

	
}
