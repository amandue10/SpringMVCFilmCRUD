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
<title>Keyword Results</title>
</head>
<body>
	<div class="header">
	<h3>Keyword Results</h3>
	</div>
	<div>
	
	<div>
	<c:choose>
		<c:when test="${empty films}">
			Film(s) Not Found!
		</c:when>
		<c:otherwise>
			<ul>
				<c:forEach var="f" items="${films}"><br/>
					${f} </br>
				</c:forEach> 
				
			</ul>
		</c:otherwise>
	</c:choose>
	</div>
	<p>
		<a href="home.do"><strong>Return to Film Menu</strong></a>
	</p>
	</div>
	<br />
	
	<div>
	<fieldset>
	<legend><h3>Delete Film</h3></legend>
	<p>To delete a film, enter the Film ID Number</p>
	<form action="deleteFilm.do" method="GET">
		<label>Film ID: <input type="text" name="id" value="${filmById.id}" /></label><br />
		<input type="submit" value="Delete This Film" />
		</fieldset>
	</div>
	</form>
	<br>
	<div>
	<form action="editFilm.do" method="GET">
	<fieldset>
	<legend><h3>Edit Film</h3></legend>
		<p>To edit a film, fill out boxes below and submit</p>
	
		<label>Film Id: <input type="text" name="id" value="${filmById.id}" /></label><br />
		<label>Film Title:  <input type="text" name="title" value="${filmById.title}" /></label><br />
		<label>Film Description: <input type="text" name="description" value="${filmById.description}" /></label><br />
		<label>Film Release Year: <input type="text" name="releaseYear" value="${filmById.releaseYear}" /></label><br />
		<label>Film Language Id <input type="text" name="languageId" value="${filmById.languageId}" /></label><br />
		<label>Film Rental Duration: <input type="text" name="rentalDuration" value="${filmById.rentalDuration}" /></label><br />
		<label>Film Rental Rate: <input type="text" name="rentalRate" value="${filmById.rentalRate}" /></label><br />
		<label>Film Length: <input type="text" name="length" value="${filmById.length}" /></label><br />
		<label>Film Replacement Cost: <input type="text" name="replacementCost" value="${filmById.replacementCost}" /></label><br />
		<label>Film Rating: <input type="text" name="rating" value="${filmById.rating}" /></label><br />
		<label>Film Special Features: <input type="text" name="specialFeatures" value="${filmById.specialFeatures}" /></label><br />
		<input type="submit" value="Edit This Film" />
		</fieldset>
		</div>
	</form>
	
	<br>
	<div class="footer">
	<p>
		<a href="home.do"><strong>Return to Film Menu</strong></a>
	</p>
	</div>
	
</body>
</html>