<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>LoginForm</title>
</head>
<body>
	<P class="titleStr">
		Login
	</P>
	
	<form name="loginForm" id="inputForm">
		<div class="centerBox">
			<label for="u_id">ID : </label> <input type="text" name ="u_id" /><br/>
			<label for="u_pw">PW : </label> <input type="password" name="u_pw" /><br/>
			<div class="btns">
				<input type="button" value="로그인"
				onclick="newSubmitTo()" />
				<input type="button" value="회원가입"
				onclieck="goJoinForm()" />
			</div>
		</div>
		
		<div class="msgBox" name="msg">
			put message, here
		</div>
	
	</form>

</body>
</html>