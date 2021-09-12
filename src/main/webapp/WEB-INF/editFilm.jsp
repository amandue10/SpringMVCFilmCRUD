<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>film details:</h3>
	<c:choose>
		<c:when test="${isEdited}">
			Good job! You edited a new film!
		</c:when>
		<c:otherwise>
			Sorry, fail to edited a new film!
		</c:otherwise>
	</c:choose>
	<br />
	<p>
		<a href="home.do"><strong>Return to Film Menu</strong></a>
	</p>
</body>
</html>