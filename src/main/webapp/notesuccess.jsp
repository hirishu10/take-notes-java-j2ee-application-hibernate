<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>


<%@include file="./Components/AllMeta_JS_CSS.jsp"%>


<title>Success</title>
</head>
<body>

	<div class="">
		<%@include file="./Components/NavComp.jsp"%>
	</div>


	<!-- Main -->
	<!-- 	<div class="home-banner"></div> -->

	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1 class="display-4">Note Saved Successfully 📝</h1>
			<p class="lead">Your note has been saved successfully.</p>

			<hr class="my-4">
			<p>Please view all note.</p>
			<a class="btn btn-primary btn-lg" href="showNote.jsp" role="button">View Notes</a>
		</div>
	</div>



	<!-- Footer -->
	<div class="">
		<%@include file="./Components/FooterComp.jsp"%>
	</div>


</body>
</html>