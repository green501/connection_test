<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>

<body>
	<form action="login" method="post">
		<input type="text" name="id">
		<input type="password" name="passwd">
		<input type="submit">
		<input type="button" value="비회원 로그인" onClick="location.href='geustLogin'">
	</form>
</body>
</html>
