package com.spring.banzzack.dto;

public class MyOrderDTO {
	private int ORDERS_NUM; // 거래 번호
	private int PRODUCT_NUM; // 상품 번호
	private String PRODUCT_IMG1; // 상품 이미지1
	private String PRODUCT_TITLE; // 상품 제목
	private String PRODUCT_RPICE; // 상품 가격
	private int ORDERS_AMOUNT; // 상품수량
	private String ORDERS_TIME; // 구매 시간
	private int IS_REVIEW; // 리뷰 여부
	private String USER_ID; // 유저 아이디
	
	
	
	public int getORDERS_NUM() {
		return ORDERS_NUM;
	}
	public void setORDERS_NUM(int oRDERS_NUM) {
		ORDERS_NUM = oRDERS_NUM;
	}
	public String getPRODUCT_IMG1() {
		return PRODUCT_IMG1;
	}
	public void setPRODUCT_IMG1(String pRODUCT_IMG1) {
		PRODUCT_IMG1 = pRODUCT_IMG1;
	}
	public int getPRODUCT_NUM() {
		return PRODUCT_NUM;
	}
	public void setPRODUCT_NUM(int pRODUCT_NUM) {
		PRODUCT_NUM = pRODUCT_NUM;
	}
	public String getPRODUCT_TITLE() {
		return PRODUCT_TITLE;
	}
	public void setPRODUCT_TITLE(String pRODUCT_TITLE) {
		PRODUCT_TITLE = pRODUCT_TITLE;
	}
	public String getPRODUCT_RPICE() {
		return PRODUCT_RPICE;
	}
	public void setPRODUCT_RPICE(String pRODUCT_RPICE) {
		PRODUCT_RPICE = pRODUCT_RPICE;
	}
	public int getORDERS_AMOUNT() {
		return ORDERS_AMOUNT;
	}
	public void setORDERS_AMOUNT(int oRDERS_AMOUNT) {
		ORDERS_AMOUNT = oRDERS_AMOUNT;
	}
	public String getORDERS_TIME() {
		return ORDERS_TIME;
	}
	public void setORDERS_TIME(String oRDERS_TIME) {
		ORDERS_TIME = oRDERS_TIME;
	}
	public int getIS_REVIEW() {
		return IS_REVIEW;
	}
	public void setIS_REVIEW(int iS_REVIEW) {
		IS_REVIEW = iS_REVIEW;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	@Override
	public String toString() {
		return "MyOrderDTO [PRODUCT_TITLE=" + PRODUCT_TITLE + ", PRODUCT_RPICE=" + PRODUCT_RPICE + ", ORDERS_AMOUNT="
				+ ORDERS_AMOUNT + ", ORDERS_TIME=" + ORDERS_TIME + ", IS_REVIEW=" + IS_REVIEW + ", USER_ID=" + USER_ID
				+ "]";
	}
	

	
}
