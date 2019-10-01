package com.paging;

public class Pagination {
	
	private int nowPage;				/* 현재 페이지 번호 */		
	private int listNumStart = 1;		/* 조회할 게시물 시작번호 */
	private int listNumEnd = 10;		/* 조회할 게시물 끝번호 */
	private int listCount = 10;			/* 페이지당 게시물 갯수 (= 행의 갯수) */
	private int maxPageCount;			/* 최대 페이지 갯수 */
	
	private int nowPageGroup; 			/* 현재 페이지 그룹 */
	private int nowPageGroupStart = 1; 	/* 현재 페이지 그룹 시작번호 */
	private int nowPageGroupEnd = 1; 	/* 현재 페이지 그룹 끝번호 */
	private int maxPageGroup = 10;		/* 그룹당 페이지 갯수  */
	
	private int prevPage;				/* 이전 페이지 */
	private int nextPage;				/* 다음 페이지 */
	
	public Pagination(int nowPage, int totalCount) {
		
		// 1. 현재 페이지 설정
		this.setNowPage(nowPage);
		
		// 2. 최대 페이지 수 
		this.setMaxPageCount(totalCount);
		
		// 3. 현재 페이지 그룹, 이전/다음 페이지 설정
		this.setNowPageGroupAndPrevNextPage(nowPage);
		
		// 4. DB 조회할  listNum의 시작번호 설정
		this.setListNumStart(nowPage);
		
		// 5. DB 조회할 listNum의 끝 번호 설정
		this.setListNumEnd(nowPage);
	}

	// 1. 현재 페이지 설정
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	// 2. 최대 페이지 수 
	public void setMaxPageCount(int totalCount) {
		this.maxPageCount = (int) Math.ceil(totalCount * 1.0 / this.listCount);
	}

	// 3. 현재 페이지 그룹, 이전/다음 페이지 설정
	public void setNowPageGroupAndPrevNextPage(int nowPage) {
		// (1) 현재 페이지 그룹
		this.nowPageGroup = (int) (nowPage - 1) / this.maxPageGroup + 1;
		
		// (2) 현재 페이지 그룹 시작번호 
		this.nowPageGroupStart = (this.nowPageGroup - 1) * this.maxPageGroup + 1;
		
		// (3) 현재 페이지 그룹 끝번호
		this.nowPageGroupEnd = this.nowPageGroup * this.maxPageGroup;
		
		if (this.nowPageGroupEnd > this.maxPageCount) {
			this.nowPageGroupEnd = this.maxPageCount;
		}
		
		// (4) 이전 페이지 설정
		this.prevPage = nowPage - 1 == 0 ? 1 : nowPage - 1;
				
		// (5) 다음 페이지 설정
		this.nextPage = nowPage == this.maxPageCount ? nowPage : nowPage + 1;
	}

	// 4. DB 조회할 시작번호 설정
	public void setListNumStart(int nowPage) {
		this.listNumStart = (nowPage - 1) * this.listCount + 1;
	}
	
	public int getListNumStart() {
		return listNumStart;
	}

	// 5. DB 조회할 끝 번호 설정
	public void setListNumEnd(int nowPage) {
		this.listNumEnd = nowPage * this.listCount;
	}
	
	public int getListNumEnd() {
		return listNumEnd;
	}

	// 6. 7에서 쓸 클라이언트 HTML 메소드
	public String makingPagingHTML(int nowPage, String text, String style) {
		String result = "<li class='page-item'><a class='page-link" + style + "' href='#' onclick='getPaging(" + nowPage + ")'>" + text + "</a></li>";
		return result;
	}
	
	// 7. 클라이언트 list.jsp로 출력할 HTML 
	public String pagingHTML() {
		
		String result = "";
		String style = "";
		
		result += makingPagingHTML(1, "&laquo;", style) + " ";
		result += makingPagingHTML(this.prevPage, "&lt;", style) + " ";

		for (int i = this.nowPageGroupStart; i <= this.nowPageGroupEnd; i++) {
				if (this.nowPage == i) {
					style = " font-bold";
				} else {
					style = " ";
				}
			result += makingPagingHTML(i,"" + i, style) + " ";
		}
		
		style = "";
		result += makingPagingHTML(this.nextPage, "&gt;", style) + " ";
		result += makingPagingHTML(this.maxPageCount, "&raquo;", style) + " ";
		
		return result;
	}
}




