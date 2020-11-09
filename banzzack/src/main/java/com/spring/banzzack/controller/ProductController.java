package com.spring.banzzack.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.omg.CORBA.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.banzzack.dto.MyOrderDTO;
import com.spring.banzzack.dto.OrderDTO;
import com.spring.banzzack.dto.ProductDTO;
import com.spring.banzzack.dto.ReviewDTO;
import com.spring.banzzack.dto.UserDTO;
import com.spring.banzzack.dto.VirtualDTO;
import com.spring.banzzack.service.ProductService;
import com.spring.banzzack.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProductController {

	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	ProductService productSer;

	@Autowired
	@Resource(name = "uploadPath")
	String uploadPath;

	// 파일 업로드 Ajax
	@RequestMapping(value = "/fileUploadAjax.do", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public @ResponseBody String uplodaFormAjax(MultipartFile file, ModelAndView mav, HttpSession session)
			throws IOException, Exception {
		System.out.println(file);
		System.out.println("fileUploadAjax에 접근함");

		String dirname = File.separator + "product";
		logger.info("파일이름 :" + file.getOriginalFilename());
		logger.info("파일크기 : " + file.getSize());
		logger.info("컨텐트 타입 : " + file.getContentType());
		String savedName = file.getOriginalFilename();
		System.out.println("파일이름 :" + file.getOriginalFilename());

		savedName = uploadFile(savedName, file.getBytes(), dirname);
		System.out.println(savedName);
		return savedName; // mypage.jsp(결과화면)로 포워딩

	}

	// 파일 업로드 Ajax
	@RequestMapping(value = "/reviewUploadAjax.do", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public @ResponseBody String reviewUploadAjax(MultipartFile file, ModelAndView mav, HttpSession session)
			throws IOException, Exception {
		System.out.println(file);
		System.out.println("reviewUploadAjax에 접근함");

		String dirname = File.separator + "reivew";
		logger.info("파일이름 :" + file.getOriginalFilename());
		logger.info("파일크기 : " + file.getSize());
		logger.info("컨텐트 타입 : " + file.getContentType());
		String savedName = file.getOriginalFilename();
		System.out.println("파일이름 :" + file.getOriginalFilename());

		savedName = uploadFile(savedName, file.getBytes(), dirname);
		System.out.println(savedName);
		return savedName; // mypage.jsp(결과화면)로 포워딩

	}

	// 파일 업로드 Ajax
	@RequestMapping(value = "/virtualUploadAjax.do", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public @ResponseBody String virtualUploadAjax(MultipartFile file, ModelAndView mav, HttpSession session)
			throws IOException, Exception {
		System.out.println(file);
		System.out.println("fileUploadAjax에 접근함");

		String dirname = File.separator + "virtual";
		logger.info("파일이름 :" + file.getOriginalFilename());
		logger.info("파일크기 : " + file.getSize());
		logger.info("컨텐트 타입 : " + file.getContentType());
		String savedName = file.getOriginalFilename();
		System.out.println("파일이름 :" + file.getOriginalFilename());

		savedName = uploadFile(savedName, file.getBytes(), dirname);
		System.out.println(savedName);
		return savedName; // mypage.jsp(결과화면)로 포워딩

	}

	// 상품등록 페이지
	@RequestMapping(value = "productReg.do", method = RequestMethod.GET)
	public String productReg(Locale locale, Model model, HttpSession session) {
		return "productReg";
	}

	// 상품 리스트
	@RequestMapping(value = "productList.do")
	public ModelAndView productList(Locale locale, @RequestParam String PRODUCT_CATEGORY1,
			@RequestParam String PRODUCT_CATEGORY2, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		List<ProductDTO> list = null; // 카테고리
		List<ProductDTO> list2 = null; // 베스트 셀러
		System.out.println("productList 정상적인 접근");
		if (PRODUCT_CATEGORY2.equals("all")) {
			list = productSer.productListAll(PRODUCT_CATEGORY1);
		} else {
			list = productSer.productListSelect(PRODUCT_CATEGORY1, PRODUCT_CATEGORY2);
		}
		list2 = productSer.bestSellerproduct(PRODUCT_CATEGORY1);
		System.out.println(list2);
		mav.addObject("list", list); // 카테고리
		mav.addObject("list2", list2); // 베스트 셀러
		mav.addObject("PRODUCT_CATEGORY1", PRODUCT_CATEGORY1);
		mav.setViewName("productList");

		return mav;
	}


	// 상품등록 처리
	@RequestMapping(value = "registOk.do", method = RequestMethod.POST)
	public ModelAndView registOk(Locale locale, ProductDTO dto, @RequestParam String VIRTUAL_IMG,
			@RequestParam String VIRTUAL_IMG2, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();

		if (1 == productSer.productReg(dto)) {
			System.out.println("상품등록 되었음");

			VirtualDTO virDto = new VirtualDTO();
			dto.setPRODUCT_CONTENTS(dto.getPRODUCT_CONTENTS().replace("\n", "<br>"));
			virDto.setPRODUCT_NUM(dto.getPRODUCT_NUM());
			virDto.setVIRTUAL_IMG(VIRTUAL_IMG);
			virDto.setVIRTUAL_IMG2(VIRTUAL_IMG2);
			productSer.virtualReg(virDto);

			mav = setHome();
		} else {
			System.out.println("상품등록 실패");
			mav.setViewName("login.do");
		}

		return mav;
	}

	// 상품 상세 페이지
	@RequestMapping(value = "productDetail.do")
	public ModelAndView productDetail(@RequestParam int PRODUCT_NUM, Locale locale, HttpSession session)
			throws Exception {
		ProductDTO dto = new ProductDTO();
		ModelAndView mav = new ModelAndView();
		VirtualDTO dto2 = new VirtualDTO();
		List<ProductDTO> list = null; // 베스트셀러 악세서리
		List<ReviewDTO> list2 = null; // 리뷰 리스트
		dto = productSer.productSearch(PRODUCT_NUM);
		list = productSer.bestListAll();
		list2 = productSer.productReviewList(PRODUCT_NUM);
		dto2 = productSer.virtualImg(PRODUCT_NUM);
		System.out.println("정상적인 접근");
		mav.addObject("list", list); // 최신 악세서리
		mav.addObject("list2", list2); // 리뷰 리스트
		mav.addObject("dto", dto);
		mav.addObject("dto2", dto2);

		mav.setViewName("product_details");

		return mav;
	}

	// 상품 구매
	@RequestMapping(value = "orderProduct.do")
	public ModelAndView orderProduct(Locale locale, HttpSession session, OrderDTO dto) throws Exception {
		ModelAndView mav = new ModelAndView();
		System.out.println(dto);
		dto.setUSER_ID(session.getAttribute("userId").toString());
		if (productSer.orderProduct(dto) == 1) {
			System.out.println("구매 성공");
		} else {
			System.out.println("구매 실패");
		}
		System.out.println("정상적인 접근");

		mav = setHome();
		mav.setViewName("home");

		return mav;
	}

	
	// 상품 구매
		@RequestMapping(value = "review.do")
		public ModelAndView review(Locale locale, @RequestParam int PRODUCT_NUM,
				@RequestParam int ORDERS_NUM, HttpSession session) throws Exception {
			ModelAndView mav = new ModelAndView();
			
			mav.addObject("PRODUCT_NUM", PRODUCT_NUM); // 최신 악세서리
			mav.addObject("ORDERS_NUM", ORDERS_NUM); // 베스트셀러 악세서리
			mav.setViewName("reviewPage");

			return mav;
		}
		
		
		// 리뷰 삭제
		@RequestMapping(value = "/myReivewAjax.do", method = RequestMethod.POST, produces = "application/text; charset=utf8")
		public @ResponseBody String myReivewAjax(String REVIEW_NUM, String ORDERS_NUM, ModelAndView mav, HttpSession session)
				throws IOException, Exception {
System.out.println("ORDERS_NUM = "+ORDERS_NUM);
			System.out.println("fileUploadAjax에 접근함");
			ReviewDTO dto = new ReviewDTO();
			dto.setREVIEW_NUM(Integer.parseInt(REVIEW_NUM));
			dto.setORDERS_NUM(Integer.parseInt(ORDERS_NUM));
			
			productSer.deletReivew(dto);
			productSer.UpdateisReivew(dto);
			
			return "deleted"; // mypage.jsp(결과화면)로 포워딩

		}
	// 상품리뷰 처리
	@RequestMapping(value = "reviewOk.do", method = RequestMethod.POST)
	public ModelAndView reviewOk(Locale locale, ReviewDTO dto, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		dto.setUSER_ID(session.getAttribute("userId").toString());

		System.out.println(dto);
		productSer.review(dto);
		productSer.changeReview(dto.getORDERS_NUM());
		System.out.println("리뷰등록 되었음");

		List<MyOrderDTO> list = null; // 주문내역
		List<ReviewDTO> list2 = null; // 리뷰내역

		list = productSer.myOrdersListAll(session.getAttribute("userId").toString());
		list2 = productSer.myReviewListAll(session.getAttribute("userId").toString());

		System.out.println("정상적인 접근");
		mav.addObject("list", list); // 최신 주문내역
		mav.addObject("list2", list2); // 리뷰내역

		mav.setViewName("orderHistory");
		

		return mav;
	}

	// 파일명 랜덤생성 메서드
	private String uploadFile(String originalName, byte[] fileData, String dirName) throws Exception {

		// 폴더 생성
		makeDir(uploadPath, dirName);
		// uuid 생성(Universal Unique IDentifier, 범용 고유 식별자)
		UUID uuid = UUID.randomUUID();
		// 랜덤생성+파일이름 저장
		String savedName = uuid.toString() + "_" + originalName;
		File target = new File(uploadPath + dirName, savedName);
		// 임시디렉토리에 저장된 업로드된 파일을 지정된 디렉토리로 복사
		// FileCopyUtils.copy(바이트배열, 파일객체)
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}

	// 디렉토리 생성
	private static void makeDir(String uploadPath, String... paths) {
		// 디렉토리가 존재하면
		if (new File(paths[paths.length - 1]).exists()) {
			return;
		}
		// 디렉토리가 존재하지 않으면
		for (String path : paths) {
			//
			File dirPath = new File(uploadPath + path);
			// 디렉토리가 존재하지 않으면
			if (!dirPath.exists()) {
				dirPath.mkdir(); // 디렉토리 생성
			}
		}
	}

	// 홈페이지 설정
	public ModelAndView setHome() {
		ModelAndView mav = new ModelAndView();
		List<ProductDTO> list = null; // 최신 악세서리
		List<ProductDTO> list2 = null; // 베스트셀러 악세서리
		List<ReviewDTO> list3 = null; // 리뷰 리스트
		
		list = productSer.mainListAll();
		list2 = productSer.bestListAll();
		list3 = productSer.reviewListAll();
		
		mav.addObject("list", list); // 최신 악세서리
		mav.addObject("list2", list2); // 베스트셀러 악세서리
		mav.addObject("list3", list3); // 리뷰 리스트
		mav.setViewName("home");

		return mav;
	}

}
