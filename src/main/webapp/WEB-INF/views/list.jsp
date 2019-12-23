<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>list.jsp</title>
<link type="text/css" rel="stylesheet" href="<%=cp %>/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="<%=cp %>/css/board.css">

<script type="text/javascript">
	
	function getSEQ(seq) {
		
		var param = "";
		param += "?seq=" + seq;
		
		location.href = "view.do" + param;
	}
	
	function getPaging(nowPage) {
		
		var param = "";
		param += "?nowPage=" + nowPage;
		
		location.href = "list.do" + param;
	}
</script>
</head>
<body>
	<div class="container container-style">
		<header class="h-style pt-4 pb-4">
			<div class="row flex-nowrap justify-content-between align-items-center">
				<div class="col-4 pt-1">
					<a class="text-style text-muted" href="#"></a>
				</div>
				<div class="col-4 text-center">
					<a class="board-header-logo text-dark" href="#">Board</a>
				</div>
				<div class="col-4 d-flex justify-content-end align-items-center">
					<a class="btn btn-sm" href="signin.do">Sign in</a>
					<a class="btn btn-sm btn-outline-secondary" href="signup.do">Sign up</a>
				</div>
			</div>
		</header>
		<div class="nav-style pt-1 pb-1 mb-5">
		    <nav class="nav d-flex justify-content-between">
		      <a class="p-2 text-muted" href="#"></a>
		      <a class="p-2 text-muted" href="#"></a>
			  <a class="p-2 text-muted" href="#"></a>
		      <a class="p-2 text-muted" href="#">GitHub</a>
		      <a class="p-2 text-muted" href="#">rewerewe/_boardProject</a>
		      <a class="p-2 text-muted" href="#"></a>
		      <a class="p-2 text-muted" href="#"></a>
		      <a class="p-2 text-muted" href="#"></a>
		      <a class="p-2 text-muted" href="#"></a>
		    </nav>
		</div>
		<div role="main" class="main-style">
			<div class="col-md-2"></div>
			<div class="col-md-auto">
				<table class="table mb-3 table-style">
					<thead class="thead-light">
						<tr>
							<th scope="col" class="w-150p">글번호</th>
							<th scope="col" colspan="2" class="w-300p">제목</th>
							<th scope="col" class="w-150p">작성일</th>
							<th scope="col" class="w-100p">작성자</th>
							<th scope="col" class="w-100p">조회수</th>
						</tr>
					</thead>
					<tbody>
<c:forEach var="item" items="${pagingList}" varStatus="vs">			
	<c:if test="${totalCount > 0 }">					
						<tr>
							<th scope="row" id="SEQ${item.SEQ}">${item.SEQ}</th>
							<td colspan="2"><a href="#" onclick="getSEQ('${item.SEQ}')">${item.TITLE}</a></td>
							<td>${item.CREATED}</td>
							<td>${item.WRITER}</td>
							<td>${item.HIT}</td>					
						</tr>
	</c:if>	
</c:forEach>
					
<c:if test="${totalCount <= 0 }">
						<tr>
							<td colspan="5">데이터가 없습니다. </td>
						</tr>
</c:if>			
					</tbody>
				</table>

<c:if test="${totalCount > 0 }">					
				<!-- 페이징 처리 -->
				<nav aria-label="Page navigation ">
					<ul class="pagination justify-content-center mb-5">${pagingHTML}</ul>
				</nav>
</c:if>				
				<p class="btn-style"> 
					<a class="btn btn-outline-secondary f-13" href="writeForm.do">글쓰기</a>
				</p>
			</div>
	 		<div class="col-md-2"></div>
		</div>	
	</div>

	<footer class="board-footer footer-style">
		<p>
			<a href="rewerewe113@gmail.com">rewerewe113@gmail.com</a>
		</p>
		<p>
		  	<a href="#">Back to top</a>
		</p>
	</footer>	
</body>
</html>