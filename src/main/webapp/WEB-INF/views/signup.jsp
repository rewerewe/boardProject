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
<title>signup.jsp</title>
<link type="text/css" rel="stylesheet" href="<%=cp %>/css/bootstrap.css">
<link type="text/css" rel="stylesheet" href="<%=cp %>/css/signup.css">

</head>
<body class="text-center">
	<div class="section-signup signup-style">
		<h3 class="signup-title-style">회원가입</h3>
			<form id="form" name="singupForm" method="post" action="" onsubmit="return checkValue()">
				<div class="signupWrite">
					<table class="table">
						<tbody>
							<tr>
								<td class="cols1">아이디*</td>
								<td class="cols2">
									<input type="text" class="form-control f-13" name="signup_id" id="signup_id" value="" maxlength="16" required fld_esssential label="아이디" autofocus> 
								</td>
								<td class="cols3">
									<input type="hidden" name="check_id" required fld_esssential label="아이디중복체크" value=""> 
										<a href="">
										<span class="btn-signup">중복확인</span></a>
								</td>
							</tr>
							<tr>
								<td class="cols1">비밀번호*</td>
								<td class="cols2">
									<input type="password" class="form-control f-13" name="signup_password" id="signup_password" value="" maxlength="16" required fld_esssential label="비밀번호" placeholder="비밀번호를 입력해주세요">
								</td>
							</tr>
							<tr class="member_pwd">
								<td class="cols1">비밀번호확인*</td>
								<td class="cols2">
								<input type="password" class="form-control f-13" name="re-password" id="re-password" value="" maxlength="16" required fld_esssential label="비밀번호 확인" placeholder="비밀번호를 한번 더 입력해주세요"> 
									<p class="txt_guide">
										<span class="txt txt_case1">동일한 비밀번호를 입력해주세요.</span>
									</p></td>
							</tr>
							<tr>
								<td class="cols1">이메일*</td>
								<td class="cols2">
									<input type="text" class="form-control f-13" name="signup_email" id="signup_email" value="" size="30" required fld_esssential label="이메일" placeholder="ex)hello@naver.com">
								</td>							
								<td class="cols3">
								<input type="hidden" name="signup_checkemail" required fld_esssential label="이메일중복체크">
									<a href="" onclick="">
									<span class="btn-signup">이메일 중복확인</span></a>
								</td>
							</tr>
							<!-- <tr>
								<td class="cols1">이름*</td>
								<td class="cols2">
								<input type="text" class="form-control f-13" name="member-name" id="member-name"  value="" required fld_esssential label="이름" placeholder="이름을 입력해주세요"> 
							</tr> -->
							
							<tr class="mobile">
								<td class="cols1">휴대폰</td>
								<td class="cols2">
									<div class="phone_num">
										<input type="text" class="form-control f-13" name="signup_mobile" id="signup_mobile"  value="" pattern="[0-9]*" label="휴대번호" placeholder="숫자만 입력해주세요"> 
										<input type="hidden" name="mobile" id="mobile" value="" required="" fld_esssential=" label="휴대폰">
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<div>
					<button type="submit" class="btn-signup-submit mb-3">가입하기</button>
					<a class="btn-sm" href="signin.do">Sign in</a>
				</div>
		</form>
	</div>
</body>
</html>

	






