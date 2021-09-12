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

	<h3>films by keyword:</h3>
	<c:choose>
		<c:when test="${empty films}">
			Films Not Found!
		</c:when>
		<c:otherwise>
			<ul>
				<c:forEach var="f" items="${films}">
					${f}
				</c:forEach>
			</ul>
		</c:otherwise>
	</c:choose>
	<br />
	
	<h3>Delete a Movie</h3>
	<form action="deleteFilm.do" method="GET">
		<label>Film ID <input type="text" name="id" value="${filmById.id}" /></label><br />
		<input type="submit" value="Delete This Film" />
	</form>
	
	<h3>Edit a Movie</h3>
	<form action="editFilm.do" method="GET">
		<label>Film Id <input type="text" name="id" value="${filmById.id}" /></label><br />
		<label>Film title  <input type="text" name="title" value="${filmById.title}" /></label><br />
		<label>Film description <input type="text" name="description" value="${filmById.description}" /></label><br />
		<label>Film releaseYear <input type="text" name="releaseYear" value="${filmById.releaseYear}" /></label><br />
		<label>Film languageId <input type="text" name="languageId" value="${filmById.languageId}" /></label><br />
		<label>Film rentalDuration <input type="text" name="rentalDuration" value="${filmById.rentalDuration}" /></label><br />
		<label>Film rentalRate <input type="text" name="rentalRate" value="${filmById.rentalRate}" /></label><br />
		<label>Film length <input type="text" name="length" value="${filmById.length}" /></label><br />
		<label>Film replacementCost <input type="text" name="replacementCost" value="${filmById.replacementCost}" /></label><br />
		<label>Film rating <input type="text" name="rating" value="${filmById.rating}" /></label><br />
		<label>Film specialFeatures <input type="text" name="specialFeatures" value="${filmById.specialFeatures}" /></label><br />
		<input type="submit" value="Edit This Film" />
	</form>
</body>
</html>