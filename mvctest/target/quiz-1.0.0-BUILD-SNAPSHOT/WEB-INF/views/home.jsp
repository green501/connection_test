<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<style>
div {
	border: 1px solid gray;
	padding: 8px;
}

h1 {
	text-align: center;
	text-transform: uppercase;
	color: #4CAF50;
	font-family: Arial, Helvetica, sans-serif;
}

h2 {
	text-align: center;
	text-transform: uppercase;
	color: #2B804A;
	font-family: Arial, Helvetica, sans-serif;
}

p {

	text-indent: 50px;
	text-align: justify;
	letter-spacing: 3px;
	font-family: Arial, Helvetica, sans-serif;
}

a {
	text-decoration: none;
	color: #008CBA;
}
</style>

<meta charset="UTF-8">
<title>해림이 괴롭히기</title>
</head>
<body>

<div>
  <h2>해림이 괴롭히기</h2>
  <h1><fmt:formatDate var="resultRegDt" value="${question.q_d}" pattern="yyyy-MM-dd"/>
${resultRegDt} (TODAY'S QUIZ)</h1>
  <p>${question.q_q}</p>
</div>
</body>
</html>