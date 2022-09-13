<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>


<%@include file="./Components/AllMeta_JS_CSS.jsp" %>


<title>Error</title>
</head>
<body>

	<div class="">
		<%@include file="./Components/NavComp.jsp"%>
	</div>


	<!-- Main -->
	<!-- 	<div class="home-banner"></div> -->

	<div class="jumbotron">
		<h1 class="display-4">500 Internal Server Error</h1>
		<p class="lead">Something went wrong. Please check and try again
			later.</p>
		<hr class="my-4">
		<p>Please create issue on GitHub, wait sometime or try again.</p>
		<a class="btn btn-primary btn-lg" href="/TakeNotes" role="button">Home</a>
	</div>



	<!-- Footer -->
	<div class="">
		<%@include file="./Components/FooterComp.jsp"%>
	</div>


</body>
</html>