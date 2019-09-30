package com.paging;

public class Pagination {
	
	private int nowPage;				/* 현재 페이지 번호 */
		
	private int listCount = 20;			/* 페이지당 게시물 수 (= 행의 갯수) */
	private int listNumStart = 1;		/* 조회할 게시물 시작번호 */
	private int listNumEnd = 20;		/* 조회할 게시물 끝번호 */
	
	private int maxPageCount;			/* 최대 페이지 수 */
	private int pageCount;				/* 페이지 수 */
	
	private int nowPageGroup; 			/* 현재 페이지 그룹 */
	private int nowPageGroupStart = 1; 	/* 현재 페이지 그룹 시작번호 */
	private int nowPageGroupEnd = 10; 	/* 현재 페이지 그룹 끝번호 */
	private int maxPageGroup = 10;		/* 그룹당 최대 페이지 수  */
	
	private int prevPage;				/* 이전 페이지 */
	private int nextPage;				/* 다음 페이지 */
	
	
}
