package com.spring.banzzack.dto;

public class OrderDTO {
	private int ORDERS_NUM; // 거래 번호
	private int ORDERS_AMOUNT; // 상품수량
	private String USER_ID; // 유저 아이디
	private int PRODUCT_NUM; // 상품 번호
	private String ORDERS_TIME; // 구매 시간
	private int IS_REVIEW; // 리뷰 여부
	
	public int getORDERS_NUM() {
		return ORDERS_NUM;
	}
	public void setORDERS_NUM(int oRDERS_NUM) {
		ORDERS_NUM = oRDERS_NUM;
	}
	public int getORDERS_AMOUNT() {
		return ORDERS_AMOUNT;
	}
	public void setORDERS_AMOUNT(int oRDERS_AMOUNT) {
		ORDERS_AMOUNT = oRDERS_AMOUNT;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public int getPRODUCT_NUM() {
		return PRODUCT_NUM;
	}
	public void setPRODUCT_NUM(int pRODUCT_NUM) {
		PRODUCT_NUM = pRODUCT_NUM;
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
	@Override
	public String toString() {
		return "OrderDTO [ORDERS_NUM=" + ORDERS_NUM + ", ORDERS_AMOUNT=" + ORDERS_AMOUNT + ", USER_ID=" + USER_ID
				+ ", PRODUCT_NUM=" + PRODUCT_NUM + ", ORDERS_TIME=" + ORDERS_TIME + ", IS_REVIEW=" + IS_REVIEW + "]";
	}

	
	
}
