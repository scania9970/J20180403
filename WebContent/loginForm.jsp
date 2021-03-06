<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/innks/NanumSquareRound/master/nanumsquareround.min.css">
<meta charset="UTF-8">
<title>로그인</title>
<style type="text/css">
	body {
		font-family: 'NanumSquareRound', sans-serif;
	}
	
	div {
		margin: 0px auto;
	}
	
	.loginForm {
		padding-top: 250px;
		padding-bottom: 150px;
		width: 300px;
		text-align: center;
	}
	
	#email {
		width: 300px;
		height: 30px;
	}
	
	#password {
		width: 300px;
		height: 30px;
	}
	
	#submit {
		width: 300px;
		height: 40px;
		color: white;
		background-color: #1A7AD9;
		border-color: transparent;
	}
	
	.footer_wrap {
		position: absolute;
		left: 0px;
		width: 100%;
		margin-top: 130px;
	}
	
	.find_password {
		margin-top: 15px;
		font-size: 14px;
		text-align: left;
	}
	
	.find_password a:HOVER {
		color: #47C83E;
	}
</style>
</head>
<body>
	<div class="header_wrap">
		<%@ include file="header.jsp"%>
	</div>
	<div class="loginForm">
		<form action="loginPro.do">
			<h1>로그인</h1><br>
			<p><input type="text" id="email" name="email" required="required" placeholder="이메일"></p><br>
			<p><input type="password" id="password" name="password" required="required" placeholder="비밀번호"></p><br>
			<p><input type="submit" id="submit" value="로그인"></p>
		</form>
		<p class="find_password"><a href="findPasswordForm.do">비밀번호 찾기</a> | <a href="joinForm.do">회원가입</a></p>
	</div>
	<div class="footer_wrap">
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>