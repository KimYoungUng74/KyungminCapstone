package com.spring.banzzack.dto;

public class ProductDTO {
	private int PRODUCT_NUM; // 상품 번호
	private String PRODUCT_TITLE; // 상품 제목
	private String PRODUCT_CONTENTS; // 상품 설명
	private String PRODUCT_IMG1; // 상품 이미지1
	private String PRODUCT_IMG2; // 상품 이미지2
	private String PRODUCT_IMG3; // 상품 이미지3
	private String PRODUCT_RPICE; // 상품 가격
	private String PRODUCT_TIME; // 등록 날짜
	private int PRODUCT_COUNT; // 재고 수량
	private String PRODUCT_CATEGORY1; // 상품 카테고리1
	private String PRODUCT_CATEGORY2; // 상품 카테고리2
	
	
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
	public String getPRODUCT_CONTENTS() {
		return PRODUCT_CONTENTS;
	}
	public void setPRODUCT_CONTENTS(String pRODUCT_CONTENTS) {
		PRODUCT_CONTENTS = pRODUCT_CONTENTS;
	}
	public String getPRODUCT_IMG1() {
		return PRODUCT_IMG1;
	}
	public void setPRODUCT_IMG1(String pRODUCT_IMG1) {
		PRODUCT_IMG1 = pRODUCT_IMG1;
	}
	public String getPRODUCT_IMG2() {
		return PRODUCT_IMG2;
	}
	public void setPRODUCT_IMG2(String pRODUCT_IMG2) {
		PRODUCT_IMG2 = pRODUCT_IMG2;
	}
	public String getPRODUCT_IMG3() {
		return PRODUCT_IMG3;
	}
	public void setPRODUCT_IMG3(String pRODUCT_IMG3) {
		PRODUCT_IMG3 = pRODUCT_IMG3;
	}
	public String getPRODUCT_RPICE() {
		return PRODUCT_RPICE;
	}
	public void setPRODUCT_RPICE(String pRODUCT_RPICE) {
		PRODUCT_RPICE = pRODUCT_RPICE;
	}
	public String getPRODUCT_TIME() {
		return PRODUCT_TIME;
	}
	public void setPRODUCT_TIME(String pRODUCT_TIME) {
		PRODUCT_TIME = pRODUCT_TIME;
	}
	public int getPRODUCT_COUNT() {
		return PRODUCT_COUNT;
	}
	public void setPRODUCT_COUNT(int pRODUCT_COUNT) {
		PRODUCT_COUNT = pRODUCT_COUNT;
	}
	public String getPRODUCT_CATEGORY1() {
		return PRODUCT_CATEGORY1;
	}
	public void setPRODUCT_CATEGORY1(String pRODUCT_CATEGORY1) {
		PRODUCT_CATEGORY1 = pRODUCT_CATEGORY1;
	}
	public String getPRODUCT_CATEGORY2() {
		return PRODUCT_CATEGORY2;
	}
	public void setPRODUCT_CATEGORY2(String pRODUCT_CATEGORY2) {
		PRODUCT_CATEGORY2 = pRODUCT_CATEGORY2;
	}
	@Override
	public String toString() {
		return "ProductDTO [PRODUCT_NUM=" + PRODUCT_NUM + ", PRODUCT_TITLE=" + PRODUCT_TITLE + ", PRODUCT_CONTENTS="
				+ PRODUCT_CONTENTS + ", PRODUCT_IMG1=" + PRODUCT_IMG1 + ", PRODUCT_IMG2=" + PRODUCT_IMG2
				+ ", PRODUCT_IMG3=" + PRODUCT_IMG3 + ", PRODUCT_RPICE=" + PRODUCT_RPICE + ", PRODUCT_TIME="
				+ PRODUCT_TIME + ", PRODUCT_COUNT=" + PRODUCT_COUNT + ", PRODUCT_CATEGORY1=" + PRODUCT_CATEGORY1
				+ ", PRODUCT_CATEGORY2=" + PRODUCT_CATEGORY2 + ", getPRODUCT_NUM()=" + getPRODUCT_NUM()
				+ ", getPRODUCT_TITLE()=" + getPRODUCT_TITLE() + ", getPRODUCT_CONTENTS()=" + getPRODUCT_CONTENTS()
				+ ", getPRODUCT_IMG1()=" + getPRODUCT_IMG1() + ", getPRODUCT_IMG2()=" + getPRODUCT_IMG2()
				+ ", getPRODUCT_IMG3()=" + getPRODUCT_IMG3() + ", getPRODUCT_RPICE()=" + getPRODUCT_RPICE()
				+ ", getPRODUCT_TIME()=" + getPRODUCT_TIME() + ", getPRODUCT_COUNT()=" + getPRODUCT_COUNT()
				+ ", getPRODUCT_CATEGORY1()=" + getPRODUCT_CATEGORY1() + ", getPRODUCT_CATEGORY2()="
				+ getPRODUCT_CATEGORY2() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
}
