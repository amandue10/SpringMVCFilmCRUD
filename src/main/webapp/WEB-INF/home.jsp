<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Film Site</title>
</head>

<body>
	<h1>Film Menu</h1>
	<h3>Enter a film ID to see the details:</h3>
	<form action="findById.do" method="GET">
		<label>Film ID <input type="text" name="filmId" /></label>
			<input type="submit" value="Get Film" />
	</form>
	
	<h3>Add a new film:</h3>
	<form action="addNewFilm.do" method="GET">
		<label>Film Id <input type="text" name="id" /></label><br />
		<label>Film title <input type="text" name="title" /></label><br />
		<label>Film description <input type="text" name="description" /></label><br />
		<label>Film releaseYear <input type="text" name="releaseYear" /></label><br />
		<label>Film languageId <input type="text" name="languageId" /></label><br />
		<label>Film rentalDuration <input type="text" name="rentalDuration" /></label><br />
		<label>Film rentalRate <input type="text" name="rentalRate" /></label><br />
		<label>Film length <input type="text" name="length" /></label><br />
		<label>Film replacementCost <input type="text" name="replacementCost" /></label><br />
		<label>Film rating <input type="text" name="rating" /></label><br />
		<label>Film specialFeatures <input type="text" name="specialFeatures" /></label><br />
		<input type="submit" value="Add New Film" />
	</form>
	
	<h3>Search films by keyword in title or description: </h3>
	<form action="keyword.do" method="GET">
		<label>Film title <input type="text" name="title" /></label><br />
		<label>Film description <input type="text" name="description" /></label><br />
		<input type="submit" value="Get Film By Keyword" />
	</form>
	

</body>
</html>