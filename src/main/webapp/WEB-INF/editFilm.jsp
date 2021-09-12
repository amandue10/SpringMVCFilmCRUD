<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="resources/css/page.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div>
	<h3>Film Details:</h3>
	<c:choose>
		<c:when test="${isEdited}">
			Good job! Edit successful!
		</c:when>
		<c:otherwise>
			Edit failed. Try again!
		</c:otherwise>
	</c:choose>
	</div>
	<br />
	<div class="footer">
	<p>
		<a href="home.do"><strong>Return to Film Menu</strong></a>
	</p>
	</div>
</body>
</html>