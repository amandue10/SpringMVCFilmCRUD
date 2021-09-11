<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> -->


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--  <link href="" rel="stylesheet" type="text/css"> -->
<!-- create and link css page -->
<nav class="navbar">
<a href="index.html"><img src="resources/css/logo.png" width="85" height="58" class="d-inline-block align-top" alt=""></a>
	<span class="navbar-toggle" id="js-navbar-toggle"> <i
		class="fas fa-bars"></i>
	</span> <a href="index.html" class="logo"></a>
	
<ul class="main-nav" id="js-menu">
		<li><a href="home.do" class="nav-links">Home</a></li>
		<!-- <li><a href="filmByID.html" class="nav-links">Film By ID</a></li>
		<li><a href="addFilmForm.do" class="nav-links">Add Film</a></li>
		<li><a href="searchFilm.html" class="nav-links">Search Film</a></li> -->
	</ul> 
</nav>

<meta charset="UTF-8">
<title>Find Film by ID</title>
</head>
<body>
<div class="filmForm">
<h1>Find A Film by ID</h1>

<p>Please use the fields below to find a film in our database by ID number.</p>

<form action="findFilmById.do" method="GET">
	ID:
	<input class="input" type="number"  min="0" required="required" name="id" placeholder="Enter ID"/> 
    <input class="submit" type="submit" value="Get Film by ID" />
</form>
<%-- <c:choose>
		<c:when test="${empty nofilm}">
			<hr>
			<strong>Oops! We didn't find anything by that ID.</strong>
		</c:when>
	</c:choose> --%>
</div>
</body>
</html>
