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

p, pre {

	text-indent: 50px;
	text-align: justify;
	letter-spacing: 3px;
	font-family: Arial, Helvetica, sans-serif;
}

a {
	text-decoration: none;
	color: #008CBA;
}

img {
	boder: 3px solid black;
	width: 480px;
	height: 640px;
	display: block;
	margin-left: auto;
	margin-right: auto;	
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
  <img src="http://wdson.me/quiz/${question.q_i}.jpeg">
</div>
</body>
</html>