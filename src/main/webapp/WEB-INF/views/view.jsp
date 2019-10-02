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
			        <p class="controlBtn"><a class="edbtn" href="#" onclick="">수정 / 삭제</a></p>
			     </div>
			</div>
	 		<div class="col-md-2"></div>
	 		
	 		<!-- Commented -->	
				<div class="card mb-3 comment-style">	
					<div class="row no-gutters">	
						<div class="card-body dp-b comments">
							<div class="card-title comment-list">
								<ul>
									<li>
										<div class="author-meta">
											<img src="https://t1.daumcdn.net/tistory_admin/blog/admin/profile_default_06.png" class="avatar" alt="">
											<span class="nickname"><a href="https://naver.com" onclick="">임혜</a></span>
											<span class="date">2019.09.11 13:00 </span>
										</div>
										<p>상세페이지 잘보고 갑니다. 좋은 팁 감사합니다.</p>
										<div class="control">
											<a href="#" onclick="">수정/삭제</a>
										</div>
									</li>
								</ul>
								<!-- commentEditForm -->
								<form class="m-0">
									<div class="comment-form">
										<!--
										<div class="field">
											<div class="secret">
												<input type="checkbox" name="secret" id="secret">
												<label for="secret" tabindex="0">Secret</label>
											</div> 
										</div>  
										-->
										<textarea name="comment" cols="" rows="4">상세페이지 잘보고 갑니다. 좋은 팁 감사합니다.</textarea>
										<div class="submit">
											
											<button type="submit" class="comment-btn">수정하기</button>
										</div>
									</div>
								</form>
							</div>
						</div>	
					</div>	
				</div> 
				<!-- CommentForm -->
				<div class="commentform mb-3 commentform-style">
					<div class="row no-gutters">
						<div class="card-body dp-b comments">
							<div class="card-title comment-list">
								<form class="m-0">
									<div class="comment-form">
										<div class="field">
											<input type="text" name="name" value="" placeholder="이름">
											<input type="password" name="password" value="" placeholder="암호">
											<div class="secret">
												<input type="checkbox" name="secret" id="secret">
												<label for="secret" tabindex="0">Secret</label>
											</div>
										</div>
										<textarea name="comment" cols="" rows="4" placeholder="댓글을 입력해주세요."></textarea>
										<div class="submit">
											<button type="submit" class="comment-btn">댓글달기</button>
										</div>
									</div>
								</form>
							</div>
						</div>
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










