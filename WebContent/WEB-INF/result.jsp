<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">




<title>Film</title>

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
			style="font-size: 30px; float : right"></a>

	</div>

</head>
<body>



	<c:choose>
		<c:when test="${! empty film}">
			
			<li><strong>${film.title}</strong></li>
			<br>
			<li>About: ${film.description}</li>
			<li>Release Year: ${film.releaseYear}</li>
			<li>Rental Duration: ${film.rentalDuration } days</li>
			<li>Rental Rate: $${film.rentalRate } per night</li>
			<li>Length: ${film.length } Minutes</li>
			<li>Replacement Cost: $${film.replacementCost }</li>
			<li>Rating: ${film.rating }</li>
			<li>Special Features ${film.specialFeatures }</li>
			<li>Language: ${film.language }</li>
			
			<ul>
					<strong>Cast:</strong>
					<c:forEach items="${film.actorList }" var="actor">
						<li>${actor.firstName } ${actor.lastName } 
						
						</li>
						<br>
					</c:forEach>
				</ul>
			</ul>
			<form action="deleteFilm.do" method="GET">
				<input type="hidden" name="id" value=${ film.id} /> <input
					type="submit" value="Delete this film" />
			</form>
			<form action="updateFilm.do" method="GET">
				<input type="hidden" name="id" value=${ film.id} /> <input
					type="submit" value="Modify" />
			</form>
			

		</c:when>
		<c:otherwise>
			<p>Film Not Found</p>
		</c:otherwise>
	</c:choose>
	
</body>
</html>