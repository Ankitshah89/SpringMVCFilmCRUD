
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update results</title>

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

	</div>
</head>
<body>
	<c:choose>
		<c:when test="${not empty film }">
			<h1>Film #${film.id} updated successfully!</h1>
			<h2>Title: ${film.title }</h2>
			<h3>${film}</h3>
			<h3>Cast:</h3>
			<ul>
				<c:forEach items="${actorList}" var="actor">
					<li>${actor.getFirstName() }${actor.getLastName() }</li>
				</c:forEach>
			</ul>
	
		</c:when>
	</c:choose>
	<form action="index.html">
		<input type="submit" value="Return to homepage">
	</form>
</body>
</html>