package com.gdu.voyage.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gdu.voyage.service.AccomReviewService;
import com.gdu.voyage.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AccomReviewController {
	@Autowired AccomReviewService accomReviewService;
	private Integer currentPage = 1;
	private final int ROW_PER_PAGE = 6;
	
	@GetMapping("/setReviewCategory")
	public String setProductCategory() {
		System.out.println("ActivityReviewController() 실행");	      
		return "/product/setReviewCategory";
	}
	
	// [Member] 숙소 후기 목록 조회
	@GetMapping("/getAccomReviewList")
	public String getAccomReviewList(Model model, @RequestParam(defaultValue="1") int currentPage, @RequestParam @Nullable String Review) {
		log.debug("*********[상훈]ReviewController() 실행");
		Map<String, Object> map = accomReviewService.getAccomReviewList(Review, currentPage, ROW_PER_PAGE);
		int controllPage = (currentPage * ROW_PER_PAGE) - (ROW_PER_PAGE - 1);
		int pageNo = ((controllPage / 100) * 10 + 1);

		model.addAttribute("controllPage", controllPage);
		model.addAttribute("accomReviewList", map.get("accomReviewList"));
		model.addAttribute("lastPage", map.get("lastPage"));
		model.addAttribute("totalCount", map.get("totalCount"));
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("pageNo", pageNo);
		
		return "/templates_citylisting/getAccomReviewList";
	}
	
	// [Member] 후기 작성 get
		@GetMapping("/addAccomReview")
		public String addAccomReview(HttpSession session) {
			log.debug("addQuestionController() 실행");
			// session에서 로그인한 회원 정보 가져옴
			Member loginMember = (Member)session.getAttribute("loginMember");
			// 비회원일 경우, 로그인 후 이용 가능
			// accom_payment 테이블에 accom_checkout기간이 지나야 후기 작성가능
			if(loginMember == null) {
				return "redirect:/login";
			}
			return "/templates_citylisting/addAccomReview";
		}
	
	@GetMapping("/getReviewOne")
	public String getReviewOne() {
		System.out.println("ReviewController() 실행");
	      
		return "/templates_citylisting/getReviewOne";
	}

}
