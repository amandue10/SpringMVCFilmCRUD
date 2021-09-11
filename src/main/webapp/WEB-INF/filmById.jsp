<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<nav class="navbar">

	<ul class="main-nav" id="js-menu">
		<li><a href="home.do" class="nav-links">Home</a></li>
		<li><a href="filmById.do" class="nav-links">Film By ID</a></li>
	</ul>
</nav>
<meta charset="UTF-8">
<title>Find Film by ID</title>
</head>
<body>
<div class="filmForm">
<h1>Find A Film by ID</h1>
<c:choose>
		<c:when test="${empty nofilm}">
			<hr>
			<strong>Oops! We didn't find anything by that ID.</strong>
		</c:when>
	</c:choose>

<p>Please use the fields below to find a film in our database by ID number.</p>

<form action="filmById.do" method="GET">
	ID:
	<input class="input" type="number"  min="0" required="required" name="id" placeholder="Enter ID"/> 
    <input class="submit" type="submit" value="Get Film by ID" />
</form>
</div>
</body>
</html>