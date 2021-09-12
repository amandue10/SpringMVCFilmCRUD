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
<title>MVC Film Site</title>
</head>

<body>
	<h1>Film Menu</h1>
	<form action="findById.do" method="GET">
	<fieldset>
	<legend>Enter a film ID to see the details:</legend>
		<label>Film ID <input type="text" name="filmId" /></label>
			<input type="submit" value="Get Film" />
		</fieldset>
	</form>
	<br>
	
	<form action="addNewFilm.do" method="GET">
	<fieldset>
	<legend>Add new film:</legend>
		<label>Film Id <input type="text" name="id" value="Enter film ID"/></label><br >
		<label >Film title <input type="text" name="title" value="Enter a film title"/></label><br />
		<label >Film description <input type="text" name="description" value="Enter description of film" /></label><br />
       
		<label>Film releaseYear <input type="text" name="releaseYear" value="Example: 2004" /></label><br />
		<label>Film languageId <input type="text" name="languageId" value="Enter 1- 6" /></label><br />
		<label>Film rentalDuration <input type="text" name="rentalDuration" value="Enter rental duration"/></label><br />
		<label>Film rentalRate <input type="text" name="rentalRate" value="Example: 5.99" /></label><br />
		<label>Film length <input type="text" name="length" value="Length of film in minutes"/></label><br />
		<label>Film replacementCost <input type="text" name="replacementCost" value="Cost to replace movie" /></label><br />
		<label>Film rating <input type="text" name="rating" value="Example input: G,PG,PG13,R"/></label><br />
		<label >Film specialFeatures <input type="text" name="specialFeatures" value="Trailers,Commentaries,Deleted Scenes,Behind the Scenes" /></label><br />
		<input type="submit" value="Add New Film" />
		</fieldset>
	</form>
	
	<form action="keyword.do" class="pure-form" method="GET">
	  <fieldset>
	<legend>Search films by keyword in title or description: </legend>
	  <p>
		<label>Film title <input type="text" class="pure-input-1-2" name="title" /></label><br />
		</p>
		<p>
		<label>Film description <input type="text" class="pure-input-1-2" name="description" /></label><br />
		</p>
		<input type="submit" class="pure-button pure-input-1-2 pure-button-primary" value="Get Film By Keyword" />
		</fieldset>
	</form>
	
  </body>
</html>