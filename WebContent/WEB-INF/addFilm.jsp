<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add film</title>

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto+Mono"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" />
<link rel="stylesheet"
	href="https://cdn.rawgit.com/konpa/devicon/df6431e323547add1b4cf45992913f15286456d3/devicon.min.css" />
<head>
<meta charset="UTF-8">


</head>
<body>

	<div class="topBar">



		<a href="index.html" class="fas fa-home" aria-hidden="true"
			style="font-size: 30px"></a>

	</div><body>
	<form:form action="addFilm.do" method="POST" modelAttribute="film">
		<form:label path="title">Title:</form:label>
		<form:input path="title" />
		<br />
		<form:label path="description">Description:</form:label>
		<form:input path="description" />
		<br />
		<form:label path="releaseYear">Release year:</form:label>
		<form:input path="releaseYear" />
		<form:errors path="releaseYear" />
		<br />
		<form:label path="languageId">Language: </form:label>
		<form:select path="languageId">
			<form:option value="1">English</form:option>
			<form:option value="2">Italian</form:option>
			<form:option value="3">Japanese</form:option>
			<form:option value="4">Mandarin</form:option>
			<form:option value="5">French</form:option>
			<form:option value="6">German</form:option>
		</form:select>
		<br />
		<form:label path="rentalDuration">Rental duration:</form:label>
		<form:input path="rentalDuration" />
		<br />
		<form:label path="rentalRate">Rental rate:</form:label>
		<form:input path="rentalRate" />
		<br />
		<form:label path="length">Length:</form:label>
		<form:input path="length" />
		<br />
		<form:label path="replacementCost">Replacement Cost:</form:label>
		<form:input path="replacementCost" />
		<br />

		<span> <input type="submit" value="Submit" />
		</span>
	</form:form>
	
	
	<form action="index.html">
         <button type="submit" class="btn btn-primary "
			value="Main Menu" action="index.html">
		Back to Main Menu</a>
		</button>
      </form>
		
</body>
</html>