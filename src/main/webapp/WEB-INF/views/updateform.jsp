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
<title>updateform.jsp</title>
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

			<div class="card mb-3 writeForm-style">
				<div class="row no-gutters">
					<div class="writeForm-body">
						<form>
							<div class="form-group">
								<select class="form-control f-13 wi-20" id="formControlSelect1">
									<option>공지</option>
									<option>질문</option>
									<option>정보</option>
								</select>
							</div>
							<div class="form-group">
								<input class="form-control f-13 wi-30" id="formControlInput1" placeholder="작성자" readonly="readonly">
							</div>
							<div class="form-group">
								<input class="form-control f-13 wi-100" id="formControlInput2" placeholder="제목을 입력해주세요." required autofocus>
							</div>
							<div class="form-group">
								<textarea class="form-control f-13 wi-100" id="formControlTextarea1" rows="10" placeholder="내용을 입력해주세요."></textarea>
							</div>
							<p class="btn-align-center"> 
								<a class="btn f-13 " href="#">취소</a>
								<a class="btn btn-outline-secondary f-13" href="#">수정</a>
							</p>
						</form>
					</div>
				</div>	
			</div>

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