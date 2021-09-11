<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">


<nav class="navbar">

	<ul class="main-nav" id="js-menu">
		<li><a href="home.do" class="nav-links">Home</a></li>
		<li><a href="filmByID.html" class="nav-links">Film By ID</a></li>
		<li><a href="addFilmForm.do" class="nav-links">Add Film</a></li>
	
	</ul>
</nav>

<meta charset="UTF-8">
<title>Search Results</title>
</head>
<body>
<div class="filmForm">
	
			<strong>Title:</strong> ${film.title}
      <br>
			<strong>Year Released:</strong>${film.releaseYear}
      <br>
			<strong>Film Language:</strong> ${film.languageId}
      <br>
			<strong>Film Description:</strong> ${film.description}
      <br>
			<strong>Rental Duration:</strong> ${film.rentalDuration}
      <br>
			<strong>Film Length:</strong> ${film.length}
      <br>
			<strong>Replacement Cost:</strong> ${film.replacementCost}
      <br>
			<strong>Film Rating:</strong> ${film.rating}
      <br>
			<strong>Special Features:</strong> ${film.specialFeatures}
      <br>
			<strong>Actors:</strong> ${film.cast}
			<br>
 
	
</div>
</body>
</html>