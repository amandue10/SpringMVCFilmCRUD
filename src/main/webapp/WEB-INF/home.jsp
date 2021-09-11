<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<nav class="navbar">
	
<ul class="main-nav" id="js-menu">
		<li><a href="home.do" class="nav-links">Home</a></li>
			<li><a href="filmById.do" class="nav-links">Add Film By ID</a></li>
			<li><a href="addFilmForm.do" class="nav-links">Add Film</a></li>
	</ul> 
</nav>

<meta charset="UTF-8">
<title>Find Film by ID</title>
</head>
<body>
<div class="filmForm">
<h1>Find A Film by ID</h1>

<p>Please use the fields below to find a film by ID number.</p>

<form action="filmById.do" method="GET">
	ID:
	<input class="input" type="number"  min="0" required="required" name="id" placeholder="Enter ID"/> 
    <input class="submit" type="submit" value="Get Film by ID" />
</form>
</div>
</body>
</html>
