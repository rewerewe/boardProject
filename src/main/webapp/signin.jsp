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
<meta name="description" content="">
<meta name="author" content="imme">
<title>signin.jsp</title>
<link type="text/css" rel="stylesheet" href="<%=cp %>/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="<%=cp %>/css/signin.css">
</head>
<body class="text-center">
	<div class="section_signin signin-style">
		<h3 class="signin-title-style">로그인</h3>
		<form method="" name="" id="" onsubmit="" action="">
			<label for="inputEmail" class="sr-only">Email address</label> 
			<input type="text" class="form-control" id="identify" name="signin_id" size="20" tabindex="1" required autofocus placeholder="아이디을 입력해주세요" >
			<label for="inputPassword" class="sr-only">Password</label> 
			<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력해주세요." required>
			<div class="checkbox mt-3 mb-3 check-email-store">
				<label><input type="checkbox" value="remember-me">아이디 기억하기</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block f-15" name="" type="submit">Sign in</button>
			<p class="mt-3 mb-3 text-muted f-13" name="copyright">&copy; 2019 imme</p>
		</form>
	</div>
</body>
</html>

	






