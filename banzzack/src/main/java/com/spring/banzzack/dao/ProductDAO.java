package com.spring.banzzack.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.banzzack.dto.MyOrderDTO;
import com.spring.banzzack.dto.OrderDTO;
import com.spring.banzzack.dto.ProductDTO;
import com.spring.banzzack.dto.ReviewDTO;
import com.spring.banzzack.dto.UserDTO;
import com.spring.banzzack.dto.VirtualDTO;

@Repository
public class ProductDAO {
	// 컨테이너가 객체를 자동으로 생성 Autowired
	@Autowired
	public SqlSessionTemplate mybatis;

	// 상품 등록
	public void productReg(ProductDTO dto) {
		mybatis.insert("ProductMapper.Register", dto);
	}

	// 상품 상세 정보
	public ProductDTO productSearch(int pRODUCT_NUM) {
		ProductDTO dto = new ProductDTO();
		dto.setPRODUCT_NUM(pRODUCT_NUM);
		return mybatis.selectOne("ProductMapper.ProductSearch", dto);
	}
	
	// 가상등록 이미지 등록
	public void virtualReg(VirtualDTO dto) {
		mybatis.insert("ProductMapper.VirtualRegister", dto);
	}

	// 가상착용 이미지 불러오기
	public VirtualDTO virtualImg(int PRODUCT_NUM) {
		VirtualDTO dto = new VirtualDTO();
		dto.setPRODUCT_NUM(PRODUCT_NUM);
		dto = mybatis.selectOne("ProductMapper.VirtualSearch", dto);
		return dto; 
	}

	public List<ProductDTO> productListAll(String PRODUCT_CATEGORY) {
		ProductDTO dto = new ProductDTO();
		dto.setPRODUCT_CATEGORY1(PRODUCT_CATEGORY);
		return mybatis.selectList("ProductMapper.productListAll", dto);
	}

	public List<ProductDTO> productListSelect(String PDUCT_CATEGORY1, String PDUCT_CATEGORY2) {
		ProductDTO dto = new ProductDTO();
		dto.setPRODUCT_CATEGORY1(PDUCT_CATEGORY1);
		dto.setPRODUCT_CATEGORY2(PDUCT_CATEGORY2);
		return mybatis.selectList("ProductMapper.productListSelect", dto);
	}

	public List<ProductDTO> bestSellerproduct(String PDUCT_CATEGORY1) {

		ProductDTO dto = new ProductDTO();
		dto.setPRODUCT_CATEGORY1(PDUCT_CATEGORY1);
		return mybatis.selectList("ProductMapper.bestSellerproduct", dto);
	}

	public List<ProductDTO> mainListAll() {
		return mybatis.selectList("ProductMapper.mainListAll");
	}

	public List<ProductDTO> bestListAll() {
		// TODO Auto-generated method stub
		return mybatis.selectList("ProductMapper.bestListAll");
	}

	public void orderProduct(OrderDTO dto) {
		mybatis.insert("ProductMapper.orderProduct", dto);
	}

	// 마이페이지
	public List<MyOrderDTO> myOrdersListAll(String userid) {
		// TODO Auto-generated method stub
		MyOrderDTO dto = new MyOrderDTO();
		dto.setUSER_ID(userid);
		System.out.println(userid);
		return mybatis.selectList("ProductMapper.myOrdersListAll", dto);
	}

	public void review(ReviewDTO dto) {
		mybatis.insert("ProductMapper.review", dto);
	}

	// 리뷰 여부 수정
	public void changeReview(ReviewDTO dto) {
		mybatis.insert("ProductMapper.changeReview", dto);
	}
	// 내 리뷰 리스트
	public List<ReviewDTO> myReviewListAll(ReviewDTO dto) {
		// TODO Auto-generated method stub
		return mybatis.selectList("ProductMapper.myReviewListAll", dto);
	}

	public void deletReivew(ReviewDTO dto) {
		mybatis.delete("ProductMapper.deletReivew", dto);
	}

	public void UpdateisReivew(ReviewDTO dto) {
		mybatis.update("ProductMapper.UpdateisReivew", dto);
	}

	public List<ReviewDTO> reviewListAll() {
		// TODO Auto-generated method stub
		return mybatis.selectList("ProductMapper.reviewListAll");
	}

	public List<ReviewDTO> productReviewList(ReviewDTO dto) {
		// TODO Auto-generated method stub
		return mybatis.selectList("ProductMapper.productReviewList", dto);
	}

}
