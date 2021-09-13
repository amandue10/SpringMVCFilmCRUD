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
	<div class="header">
	<h1>Film Menu</h1>
	</div>
	
	<div>
	<p>Welcome to the film site database. You can search the database by entering a film's ID or search by entering keywords. 
	The details of the film will populate and you will have the option to edit, add, or delete a film from the database.
	</p>
	</div>
	<br>
	<div>
	<form action="findById.do" method="GET">
	<fieldset>
	<legend><h3>Find Film Details:</h3></legend>
	<p>To Search, Enter a Film ID</p>
		<label>Film ID: <input type="text" name="filmId" /></label>
			<input type="submit" value="Get Film" />
		</fieldset>
		</div>
	</form>
	<br>
	<div>
	<form action="addNewFilm.do" method="GET">
	<fieldset>
	<legend><h3>Add Film To Database:</h3></legend>
	<p>To add a new film to the database, fill out the form.</p>
		<label>Film ID: <input type="text" name="id" placeholder="Enter Film ID"/></label><br >
		<label >Film Title: <input type="text" name="title" placeholder="Enter Film Title"/></label><br />
		<label >Film Description: <input type="text" name="description" placeholder="Enter Film Description" /></label><br />
		<label>Film Release Year: <input type="text" name="releaseYear" placeholder="Enter Film Year. Example: 2004" /></label><br />
		<label>Film Language Id: <input type="text" name="languageId" placeholder="Enter Associated Language ID, 1- 6" /></label><br />
		<label>Film Rental Duration: <input type="text" name="rentalDuration" placeholder="Enter Rental Duration"/></label><br />
		<label>Film Rental Rate: <input type="text" name="rentalRate" placeholder="Enter Amount, Example: 5.99" /></label><br />
		<label>Film Length: <input type="text" name="length" placeholder="Length of Film in Minutes"/></label><br />
		<label>Cost To Replace Film: <input type="text" name="replacementCost" placeholder="Cost to Replace Film" /></label><br />
		<label>Film Rating: <input type="text" name="rating" placeholder="Enter: G, PG, PG13, R"/></label><br />
		<label >Film Special Features: <input type="text" name="specialFeatures" placeholder="Enter: Trailers, Commentaries, Deleted Scenes, Behind the Scenes" /></label><br />
		<input type="submit" value="Add New Film" />
		</fieldset>
		</div>
	</form>
	<br>
	<div>
	<form action="keyword.do" class="pure-form" method="GET">
	  <fieldset>
	<legend><h3>Search Films by Keyword: </h3></legend>
	<p>Search using keywords from title or film description</p>
	  <p>
		<label>Film Title: <input type="text" class="pure-input-1-2" name="title" /></label><br />
		</p>
		<p>
		<label>Film Description: <input type="text" class="pure-input-1-2" name="description" /></label><br />
		</p>
		<input type="submit" class="pure-button pure-input-1-2 pure-button-primary" value="Get Film By Keyword" />
		</fieldset>
	</div>
	</form>
	
  </body>
</html>