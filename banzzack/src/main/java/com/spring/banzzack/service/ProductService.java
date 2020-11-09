package com.spring.banzzack.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.spring.banzzack.dao.ProductDAO;
import com.spring.banzzack.dto.MyOrderDTO;
import com.spring.banzzack.dto.OrderDTO;
import com.spring.banzzack.dto.ProductDTO;
import com.spring.banzzack.dto.ReviewDTO;
import com.spring.banzzack.dto.VirtualDTO;


@Service("IProductService")
public class ProductService{
	
	// 인터페이스로 생성해야함
	@Autowired
	public ProductDAO dao;

	// 상품 등록
	public int productReg(ProductDTO dto) {
		dao.productReg(dto); // 상품 등록
		return 1;
	}

	// 상품 상세 정보
	public ProductDTO productSearch(int pRODUCT_NUM) {
		ProductDTO dto = new ProductDTO();
		try {
			dto = dao.productSearch(pRODUCT_NUM); // 상품 찾기
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return dto;
	}

	public void virtualReg(VirtualDTO dto) {
		dao.virtualReg(dto); // 상품 등록
	}

	public VirtualDTO virtualImg(int pRODUCT_NUM) {
		VirtualDTO dto = new VirtualDTO();
		try {
			dto = dao.virtualImg(pRODUCT_NUM); // 상품 찾기
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return dto;
	}

	public List<ProductDTO> productListAll(String PRODUCT_CATEGORY) {
		// TODO Auto-generated method stub
		return dao.productListAll(PRODUCT_CATEGORY); // 상품 등록
	}

	public List<ProductDTO> productListSelect(String RODUCT_CATEGORY1, String RODUCT_CATEGORY2) {
		// TODO Auto-generated method stub
		return dao.productListSelect(RODUCT_CATEGORY1, RODUCT_CATEGORY2); // 상품 등록
	}

	public List<ProductDTO> bestSellerproduct(String pRODUCT_CATEGORY1) {
		// TODO Auto-generated method stub
		return dao.bestSellerproduct(pRODUCT_CATEGORY1); // 상품 등록
	}
	
	// 최신 품목 리스트
	public List<ProductDTO> mainListAll() {
		// TODO Auto-generated method stub
		return dao.mainListAll(); // 메인 최신 상품
	}
	
	// 베스트 셀러
	public List<ProductDTO> bestListAll() {
		// TODO Auto-generated method stub
		return dao.bestListAll(); // 메인 베스트 상품
	}
	
	// 내 리뷰 내역
	public List<ReviewDTO> myReviewListAll(String userid) {
		ReviewDTO dto = new ReviewDTO();
		dto.setUSER_ID(userid);
		
		return dao.myReviewListAll(dto); 
	}


	public int orderProduct(OrderDTO dto) {
		dao.orderProduct(dto); // 상품 등록
		return 1;
	}

	// 마이페이지 - 구매 내역
	public List<MyOrderDTO> myOrdersListAll(String userid) {
		// TODO Auto-generated method stub
		return dao.myOrdersListAll(userid); // 메인 베스트 상품
	}

	public int review(ReviewDTO dto) {
		dao.review(dto); // 상품 리뷰
		return 1;
	}

	public void changeReview(int orders_NUM) {
		ReviewDTO dto = new ReviewDTO();
		dto.setORDERS_NUM(orders_NUM);
		dao.changeReview(dto); // 상품 등록
	}

	public void deletReivew(ReviewDTO dto) {
		dao.deletReivew(dto); // 메인 베스트 상품
	}

	public void UpdateisReivew(ReviewDTO dto) {
		dao.UpdateisReivew(dto); // 리뷰 상태 변경
	}

	public List<ReviewDTO> reviewListAll() {
		// TODO Auto-generated method stub
		return dao.reviewListAll(); // 메인 리뷰
	}

	public List<ReviewDTO> productReviewList(int pRODUCT_NUM) {
		ReviewDTO dto = new ReviewDTO();
		dto.setPRODUCT_NUM(pRODUCT_NUM);
		return dao.productReviewList(dto); // 상품 리뷰 목록
	}


	

	
}
