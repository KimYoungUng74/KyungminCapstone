package com.spring.banzzack.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.banzzack.dto.ProductDTO;
import com.spring.banzzack.dto.ReviewDTO;
import com.spring.banzzack.service.ProductService;
import com.spring.banzzack.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	UserService userSer;

	@Autowired
	ProductService productSer;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainpage(Locale locale, Model model) {
		List<ProductDTO> list = null; // 최신 악세서리
		List<ProductDTO> list2 = null; // 베스트셀러 악세서리
		List<ReviewDTO> list3 = null; // 리뷰 리스트
		
		list = productSer.mainListAll();
		list2 = productSer.bestListAll();
		list3 = productSer.reviewListAll();

		model.addAttribute("list", list); 
		model.addAttribute("list2", list2); 
		model.addAttribute("list3", list3); // 리뷰 리스트
		
		return "home";
	}

	// 상품 리스트
	@RequestMapping(value = "home.do")
	public ModelAndView home(Locale locale, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		

		mav = setHome();
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
