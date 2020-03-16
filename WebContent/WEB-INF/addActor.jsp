<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	
<title>Add Actor Info</title>

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

<a href="index.html" class="fas fa-home" aria-hidden="true"  style="font-size:40px; color:orange; float:right"></a>
 
 

	<form action="addNewActor.do">

		<input type="hidden" name="id" value="${ film.id}" style="opacity: 0.5;"/>
		First Name <input type="text" name="firstName" value="First" style="opacity: 0.5;"/> 
		About <input type="text" name="lastName" value="Last" style="opacity: 0.5;"/> 
		<input type="submit" value="Add Actor to Film"/>

		</form>
		
</body>
</html>