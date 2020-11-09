package com.spring.banzzack.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.banzzack.dto.MyOrderDTO;
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
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	UserService userSer;
	
	@Autowired
	ProductService productSer;
	
	// 회원가입 화면
		@RequestMapping(value = "signup.do")
		public String signup(Locale locale, Model model, HttpSession session) {
			return "signup";
		}

		// 회원 가입 처리
		@RequestMapping(value = "signupOk.do", method = RequestMethod.POST)
		public ModelAndView signupOk(Locale locale, UserDTO dto, HttpSession session) {
			System.out.println("userName : " + dto.getUSER_NAME());
			ModelAndView mav = new ModelAndView();
			userSer.signupUser(dto);
			mav = setHome();
			/*if (1 == userSer.signupUser(dto)) {
				System.out.println("회원가입 되었음");
				mav.setViewName("home");
			} else {
				System.out.println("회원가입 실패");
				mav.setViewName("login.do");
			}*/
			return mav;
		}
		
		// 로그인 화면
			@RequestMapping(value = "login.do")
			public String login(Locale locale, Model model, HttpSession session) {
				return "login";
			}

		// 로그인 처리
		@RequestMapping(value = "loginCheck.do", method = RequestMethod.POST)
		public ModelAndView loginCheck(@ModelAttribute UserDTO dto, HttpSession sessison, HttpServletRequest request,
				HttpServletResponse response) throws Exception {
			boolean result = userSer.loginCheck(dto, sessison);
			ModelAndView mav = new ModelAndView();

			if (result) { // 로그인 성공
				mav = setHome();
				mav.addObject("dto", dto);
				mav.setViewName("home");
				mav.addObject("msg", "success");
				System.out.println("로그인 성공");
			} else { // 로그인 실패
				// login.jsp로 이동
				mav.setViewName("login");
				mav.addObject("msg", "failure");
				System.out.println("로그인 실패");
			}
			return mav;
		}
		
		// 로그아웃
		@RequestMapping(value = "logout.do")
		public ModelAndView logOut(HttpSession session, HttpServletRequest request, HttpServletResponse response)
				throws Exception {

			userSer.logout(session);
			ModelAndView mav = new ModelAndView();
			mav = setHome();
			mav.setViewName("home");
			mav.addObject("msg", "logout");
			return mav;
		}
		
		// 마이 페이지
		@RequestMapping(value = "myPage.do")
		public ModelAndView myPage(Locale locale, HttpSession session)
				throws Exception {

			ModelAndView mav = new ModelAndView();

			List<MyOrderDTO> list = null; // 주문내역
			List<ReviewDTO> list2 = null; // 리뷰내역
			
			
			list = productSer.myOrdersListAll(session.getAttribute("userId").toString());
			list2 = productSer.myReviewListAll(session.getAttribute("userId").toString());

			System.out.println("정상적인 접근");
			mav.addObject("list", list); // 주문내역
			mav.addObject("list2", list2); // 리뷰내역

			mav.setViewName("orderHistory");

			return mav;
		}
		
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
