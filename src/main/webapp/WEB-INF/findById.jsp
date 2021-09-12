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
	<h3>Film Details:</h3>
	<c:choose>
		<c:when test="${empty filmById}">
			Film Not Found!
		</c:when>
		<c:otherwise>
			${filmById}<br />
			Actors: ${filmById.cast}<br />
			Category: ${category}<br />
		</c:otherwise>
	</c:choose>
	<br />
	
	<form action="deleteFilm.do" method="GET">
	<fieldset>
	<legend>Delete This Movie</legend>
		<label>Film ID <input type="text" name="id" value="${filmById.id}" /></label><br />
		<input type="submit" value="Delete This Film" />
		</fieldset>
	</form>
	<br>
	<form action="editFilm.do" method="GET">
	<fieldset>
	<legend>Edit This Movie</legend>
		<input type="hidden" name="id" value="${filmById.id}" />
		<label>Film Title:  <input type="text" name="title" value="${filmById.title}" /></label><br />
		<label>Film Description: <input type="text" name="description" value="${filmById.description}" /></label><br />
		<label>Film Release Year: <input type="text" name="releaseYear" value="${filmById.releaseYear}" /></label><br />
		<label>Film Language Id: <input type="text" name="languageId" value="${filmById.languageId}" /></label><br />
		<label>Film Rental Duration: <input type="text" name="rentalDuration" value="${filmById.rentalDuration}" /></label><br />
		<label>Film Rental Rate: <input type="text" name="rentalRate" value="${filmById.rentalRate}" /></label><br />
		<label>Film Length: <input type="text" name="length" value="${filmById.length}" /></label><br />
		<label>Film Replacement Cost: <input type="text" name="replacementCost" value="${filmById.replacementCost}" /></label><br />
		<label>Film Rating: <input type="text" name="rating" value="${filmById.rating}" /></label><br />
		<label>Film Special Features <input type="text" name="specialFeatures" value="${filmById.specialFeatures}" /></label><br />
		<input type="submit" value="Edit This Film" />
	</fieldset>
	</form>
	<br>
	<p>
		<a href="home.do"><strong>Return to Film Menu</strong></a>
	</p>
</body>
</html>