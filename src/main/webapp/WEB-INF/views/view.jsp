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
<title>view.jsp</title>
<link type="text/css" rel="stylesheet" href="<%=cp %>/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="<%=cp %>/css/board.css">
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
					<a class="btn btn-sm" href="#">Sign in</a>
					<a class="btn btn-sm btn-outline-secondary" href="#">Sign up</a>
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
				<div class="view-style">
					<h6 class="view-group"><u>${view.SEQ}</u></h6>
					<h3 class="view-title">${view.TITLE}</h3>
					<p class="view-date">${view.CREATED} by <a href="#">${view.WRITER}</a><u class="controlHit">${view.HIT} watched </u></p>

			        <p>${view.CONTENT}</p>
			     </div>
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