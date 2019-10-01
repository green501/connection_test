<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<style>
* {
  box-sizing: border-box;
  font-family: Arial, Helvetica, sans-serif;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the top navigation bar */
.topnav {
  margin: auto;
  overflow: hidden;
  background-color: #47476b;
  text-align: center;
}

/* Style the topnav links */
.topnav a {
  margin: auto;
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #7575a3;
  color: black;
}

/* Style the content */
.content {
  background-color: #ddd;
  padding: 10px;
 
}

/* Style the footer */
.footer {
  margin: auto;
  text-align: center;
  background-color: #f1f1f1;
  padding: 10px;
}

div {
	border: 1px solid gray;
	padding: 8px;
}

.box {
	margin: auto;
	text-align: center;
	color: #4CAF50;
	font-family: Arial, Helvetica, sans-serif;
	width: 300px;
}

h1 {
	text-align: center;
	text-transform: uppercase;
	color: #7575a3;
	font-family: Arial, Helvetica, sans-serif;
}

h2 {
	text-align: center;
	text-transform: uppercase;
	color: #c2c2d6;
	font-family: Arial, Helvetica, sans-serif;
	margin: auto;
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


<div class="topnav">
  <a href="./"><h2>해림이 괴롭히기 ver.2</h2></a>
  <a href="prev"><h2>PREV</h2></a>
  <a href="next"><h2>NEXT</h2></a>
</div>

<div class="content">
  <h1><fmt:formatDate var="resultRegDt" value="${question.q_d}" pattern="yyyy-MM-dd"/>
TODAY'S QUIZ (${resultRegDt}) </h1>

	<c:choose>
		<c:when test="${question != null }">  
		  <p>${question.q_q}</p>
		  <c:if test="${question.q_i != null }">
		  	<img src="http://wdson.me/quiz/${question.q_i}.jpeg">
		  </c:if>
		</c:when>
	  	<c:otherwise>
	  		<h1> 데이터 베이스에 입력된 내용이 없습니다. </h1>
	  		<h2> ㅋ.ㅋ </h2>
	  	</c:otherwise>
  	</c:choose>
</div>

<div class="footer">
  <p>Copyright 2019-2019 by wdson.me. All Rights Reserved. ㅋ.ㅋ </p>
</div>

</body>
</html>