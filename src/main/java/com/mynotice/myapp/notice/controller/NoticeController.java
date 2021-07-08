package com.mynotice.myapp.notice.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mynotice.myapp.notice.model.NoticeVO;
import com.mynotice.myapp.notice.service.NoticeServiceIF;

/**
 writer : hs.jeong
 date : 2021-06-30
 공지사항 컨트롤러
 */


@Controller
public class NoticeController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);
	
	@Autowired
	public NoticeServiceIF noticeService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/notice.so", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "notice/notice";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/getNoticeData.so", method = RequestMethod.POST, produces="application/json")
	public @ResponseBody Map<String, Object> getNoticeData(Locale locale, HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView mv = new ModelAndView();
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		//1. 페이징 파라미터 처리
		request.getParameter("");
		//page=1&perPage=10&sortColumn=XXX&sortAscending=true
		
		//2. 리스트 데이터 가져오기
		List<NoticeVO> dataList = noticeService.getNoticeDataList(null);
		
		Map<String, Object> obj = new HashMap<>();
		Map<String, Object> innerObj = new HashMap<>();
		Map<String, Object> pageObj = new HashMap<>();
		
		pageObj.put("page", 1);
//		pageObj.put("page", request.getParameter("page"));
		pageObj.put("totalCount", dataList.get(0).getTotal_cnt());
		innerObj.put("contents",dataList);
		innerObj.put("pagination",pageObj);
		
		
		obj.put("result", true );
		obj.put("data", innerObj);
		
		return obj;
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/login.so", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "user/login";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/signup.so", method = RequestMethod.GET)
	public String signup(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "user/signup";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/addNotice.so", method = RequestMethod.POST)
	public String addNotice(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "notice/noticeForm";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/noticeDetail.so", method = RequestMethod.POST)
	public ModelAndView noticeDetail(Locale locale, NoticeVO vo) {
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView mv = new ModelAndView("notice/noticeDetail");
		
		mv.addObject("data",noticeService.getNoticeData(vo.getMyid()));
		
		return mv;
	}
	
	@RequestMapping(value = "/deleteNotice.so", method = RequestMethod.POST, produces="application/json")
	public @ResponseBody Map<String, Object> deleteNotice(Locale locale, HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView mv = new ModelAndView();
		
		System.out.println(request.getParameter("data"));
		System.out.println(request.getParameter("data[]"));
		System.out.println(request.getParameterValues("data"));
		System.out.println();
		
		//1. param 설정
		String data[] = request.getParameterValues("data[]");
		Map<String, Object> map = new HashMap<>();
		map.put("myids", data);
		
		//2. 리스트 데이터 가져오기
		int a = this.noticeService.deleteNotice(map);
		
		
		Map<String, Object> obj = new HashMap<>();
		obj.put("result", a > 0 ? true : false);
//		obj.put("data", innerObj);
		
		return obj;
	}
	
	@RequestMapping(value = "/insertNotice.so", method = RequestMethod.POST, produces="application/json")
	public ModelAndView insertNotice(Locale locale, NoticeVO vo, HttpServletRequest request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView mv = new ModelAndView("notice/notice");
		
		//1. param 설정
		vo.setUserid("admin");
		
		//2. 리스트 데이터 가져오기
		int a = this.noticeService.insertNotice(vo);
		
		
		Map<String, Object> obj = new HashMap<>();
		obj.put("result", a > 0 ? true : false);
//		obj.put("data", innerObj);
		
		return mv;
	}
	
}
