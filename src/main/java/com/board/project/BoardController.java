package com.board.project;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Controller : Bean을 주입시켜주는 어노테이션. 
 * 어노테이션을 선언한 클래스가 Controller로 사용됨을 Spring Framework에 알리는 역할.
 */
@SuppressWarnings("rawtypes")
@Controller
public class BoardController {

	/* Resource(name="BoardService")에서 Autowired 로 수정  */
	@Autowired 
	private BoardService service;
	
	/**
	 * RequestMapping : 클라이언트 요청을 매칭하는 어노테이션. 
	 * 요청에 따라 어떤 Controller, Method가 처리할 것인지 결정하여 매핑하는 역할 
	 */
	@RequestMapping("deleteContent.do")
	public String delectContent(HttpServletRequest request) {
		
		service.delectContent(request);
		
		return "redirect:list.do";
	}
	
	@RequestMapping("insertContent.do")
	public String insertContent(HttpServletRequest request) {
		
		service.insertContent(request);
		
		return "redirect:list.do";
	}
	
	@RequestMapping("writeForm.do")
	public String writeForm() {
		
		return "writeform";
	}
	
	
	@RequestMapping("view.do")
	public ModelAndView view(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		Map view = service.view(request);
		
		mv.addObject("view", view);
		mv.setViewName("view");
		
		return mv;
	}
	
	@RequestMapping("list.do")
	public ModelAndView list(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		List<Object> pagingList = service.pagingList(request);
		
		mv.addObject("pagingList", pagingList);
		mv.setViewName("list");
		
		return mv;
	}
	
	@RequestMapping("data.do")
	public String inputData(HttpServletRequest request) {
		
		service.data(request);
		
		return "redirect:list.do";
	}
	
	@RequestMapping("listTest.do")
	public ModelAndView list() {

		ModelAndView mv = new ModelAndView();
		List<Object> list = service.list();

		mv.addObject("list", list);
		mv.setViewName("list");

		return mv;
	}
	
	@RequestMapping("test.do") 
	public ModelAndView sampleList() {
		
		ModelAndView mv = new ModelAndView();
		
		List<Object> sampleList = service.sample();
		
		mv.addObject("sampleList", sampleList);
		mv.setViewName("home");
		
		return mv;
	}
}
