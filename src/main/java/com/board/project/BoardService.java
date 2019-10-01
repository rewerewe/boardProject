package com.board.project;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.paging.Pagination;

/** 
 * Service : Bean을 주입시켜주는 어노테이션. 
 * 어노테이션을 선언한 클래스가 Service로 사용됨을 Spring Framework에 알리는 역할.
 */
@SuppressWarnings("rawtypes")
@Service("BoardService")
public class BoardService {
	
	@Resource(name="BoardDao")
	private BoardDao dao;
	
	/**
	 * Resource : 어플리케이션에서 필요한 자원을 자동 연결할 때 사용하는 어노테이션. 
	 * 주로 getter, setter에 적용시키며, 설정파일에 등록된 bean객체의 name 속성으로 자동 주입된다. 
	 * */
	public Map view(HttpServletRequest request) {

		String seq = request.getParameter("seq");
		Map view = dao.view(seq);
		
		return view;
	}
	
	public List<Object> pagingList(HttpServletRequest request) {
		
		// 1. 현재 페이지 설정 
		int nowPage = request.getParameter("nowPage") == null ? 1 : Integer.parseInt(request.getParameter("nowPage"));
		String pagingHTML = "";
		
		// 2. 전체 게시물 갯수 조회 
		int totalCount = dao.totalCount();
		
		// 3. Paging : 시작행 번호, 종료행 번호, pagingHTML 구성 
		Pagination pagination = new Pagination(nowPage, totalCount);
		
		int listNumStart = pagination.getListNumStart();
		int listNumEnd = pagination.getListNumEnd();
		
		pagingHTML = pagination.pagingHTML();
		
		// 4. 시작행 번호, 종료행 번호로 게시물 목록 조회
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("listNumStart", listNumStart);
		param.put("listNumEnd", listNumEnd);
		
		List<Object> pagingList = dao.pagingList(param);
		
		request.setAttribute("totalCount", totalCount);
		request.setAttribute("pagingList", pagingList);
		request.setAttribute("pagingHTML", pagingHTML);
		
		return pagingList;
	}
	
	public void data(HttpServletRequest request) {
		
		String writer = request.getParameter("writer");
		
		dao.data(writer);
	}

	public List<Object> list() {
		
		List<Object> list = dao.list();
		return list;
	}
	
	public List<Object> sample() {
		
		List<Object> sampleList = dao.sample();
		return sampleList;
	}


}

