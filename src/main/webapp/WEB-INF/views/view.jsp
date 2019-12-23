<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>view.jsp</title>
<link type="text/css" rel="stylesheet" href="${cp}/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="${cp}/css/board.css">
<script type="text/javascript" src="${cp}/resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(init);

	function init() {
		// TODO		
	}

	function updateContent(seq) {
		
		alert("글 수정화면으로 이동합니다.");
		
		if (seq != null) {
			var url = "updateForm.do?seq=" + seq;
			location.href = url

		} else if (seq == null) {
			alert("잘못된 경로입니다. 다시 시도해주세요.");
			
		} else {
			return false;
		}
	}
	
	function deleteContent(seq) {
		
		var msg = confirm("글번호 '"+ seq +"' 를 삭제하시겠습니까?");
		
		if (msg == true) {
		
			var url = "deleteContent.do?seq=" + seq;
			location.href = url
		
		} else {
			return false;
		}
	}
	
	function updateCommForm(commIdx) {
		// 전체 초기화
		var commAreaAll = $('[id^=commArea]');
		commAreaAll.find('[id^=commContentSpan]').removeClass('hidden');
		commAreaAll.find('[id^=commContentTextarea]').addClass('hidden');
		commAreaAll.find('[id^=commSaveBtn]').addClass('hidden');
		
		// 대상 로우만 숨김/보임 처리
		var commArea = $('[id^=commArea' + commIdx + ']');
		var commContentSpan = $('#commContentSpan' + commIdx);
		var commContentTextarea = $('#commContentTextarea' + commIdx);
		var commSaveBtn = $('#commSaveBtn' + commIdx);
		commContentSpan.addClass('hidden');
		commContentTextarea.removeClass('hidden');
		commSaveBtn.removeClass('hidden');
	}
	
	function deleteComm(seq, commSeq, commWriter) {
	
		var msg = confirm(commWriter + "님이 작성한 댓글을 삭제하시겠습니까?");
		
		if (msg == true) {
			var url = "deleteComm.do?seq=" + seq;
			url += "&commSeq=" + commSeq;
			location.href = url;
		} else {
			return false;
		}
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
				<div class="view-style">
					<h6 class="view-group text-under">${view.SEQ}</h6>
					<h3 class="view-title">${view.TITLE}</h3> 
					<p class="view-date">${view.CREATED} by <a href="#">${view.WRITER}</a></p> <p class="controlHit text-under">${view.HIT} watched </p>
			        <p>${view.CONTENT}</p>
			        <p class="controlBtn">
				        <a class="edbtn" href="#" onclick="updateContent('${view.SEQ}')">수정</a>
				        <a class="edbtn" href="#" onclick="deleteContent('${view.SEQ}')">/ 삭제</a>
				    </p>
			     </div>
			</div>
	 		<div class="col-md-2"></div>
	 		
	 		<!-- Commented -->
<c:forEach var="item" items="${commList}" varStatus="vs">
	<c:if test="${item.BOARD_SEQ == view.SEQ}">		
			<div id="commArea${vs.index}" class="card mb-3 comment-style">
				<div class="row no-gutters">
					<div class="card-body dp-b comments">
						<div class="card-title comment-list">
							<ul>
								<li>
									<div class="author-meta">
										<img src="${cp}/resources/image/profile.png" class="avatar" alt="프로파일">
										<span class="nickname"><a href="#" onclick="">${item.COMM_WRITER}</a></span>
										<span class="date">${item.COMM_CREATED}</span>
									</div>
								<form name="commentForm" class="m-0" action="updateComm.do">
									<p>
										<input type="hidden" name="seq" value="${view.SEQ}" />
										<input type="hidden" name="commSeq" value="${item.COMM_SEQ}" />
										<input type="hidden" name="commWriter" value="${item.COMM_WRITER}" />
										<span id="commContentSpan${vs.index}">${item.COMM_CONTENT}</span>
										<textarea id="commContentTextarea${vs.index}" class="hidden" name="commContent" cols="100" rows="5" autofocus>${item.COMM_CONTENT}</textarea>
										<br>
										<button type="submit" id="commSaveBtn${vs.index}" class="comment-btn hidden">수정하기</button>
									</p>
								</form>
									<div class="control">
										<a href="#" onclick="updateCommForm('${vs.index}')">댓글수정</a>
										<a href="#" onclick="deleteComm('${view.SEQ}','${item.COMM_SEQ}','${item.COMM_WRITER}')">/ 댓글삭제</a>
									</div>
									<%-- <div>
										${commList}
									</div> --%>
								</li>
							</ul>
						</div>
					</div>	
				</div>	
			</div>
	</c:if>
</c:forEach> 
<%-- <c:if test="${item.BOARD_SEQ != view.SEQ}">
	<div>잘못된 경로입니다.</div>
</c:if> --%>
				
				<!-- CommentForm -->
				<div class="commentform mb-3 commentform-style">
					<div class="row no-gutters">
						<div class="card-body dp-b comments">
							<div class="card-title comment-list">
								<form class="m-0" id="commentFomr" action="insertComment.do">
									<div class="comment-form">
										<div class="field">
											<input type="text" name="username" placeholder="username">
											<input type="password" name="password" placeholder="password" pattern="[a-z0-9]{6,18}" title="소문자과 숫자 조합, 6자이상 입력해주세요.">
										</div>
										<textarea name="comment" rows="5" placeholder="leave a comment"></textarea>
										<input type="hidden" name="seq" value="${view.SEQ}">
										<button type="submit" class="comment-btn">댓글남기기</button>
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










