<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>


<%@include file="allMeta_JS_CSS.jsp"%>


<title>Invalid Page</title>
</head>
<body>

	<div class="">
		<%@include file="NavComp.jsp"%>
	</div>



	<!-- Main -->
	<!-- 	<div class="home-banner"></div> -->

	<div class="jumbotron">
		<h1 class="display-4">404 Something went wrong</h1>
		<p class="lead">The page you are looking is not available or does
			not exist.</p>
		<hr class="my-4">
		<p>Please create issue on GitHub, wait sometime or try again.</p>
		<a class="btn btn-primary btn-lg" href="/TakeNotes" role="button">Home</a>
	</div>



	<!-- Footer -->
	<div class="">
		<%@include file="FooterComp.jsp"%>
	</div>


</body>
</html>