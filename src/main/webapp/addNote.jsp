<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>



<%@include file="./Components/AllMeta_JS_CSS.jsp"%>


<title>Add Note</title>
</head>
<body>

	<div class="">
		<%@include file="./Components/NavComp.jsp"%>
	</div>



	<!-- Main -->
	<div
		style="max-width: 100%; height: 85vh;
	/* background-color:red; */
	/* display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center; */ font-family: sans-serif; padding-top: 50px;">
		<div class="container">

			<form action="SaveNoteServlet" method="post">
				<div class="form-group">
					<label for="noteTitle">Note Title</label> <input type="text"
						class="form-control" id="noteTitle" aria-describedby="emailHelp"
						placeholder="Enter Note Title" name="note_title"> <small
						id="emailHelp" class="form-text text-muted">Please write
						cool title Length not more than 100.</small>
				</div>
				<div class="form-group">
					<label for="noteDesc">Note Description</label>

					<textarea class="form-control" style="height: 300px;"
						name="note_desc" aria-describedby="noteD"
						placeholder="Enter Note Description" id="noteDescription"></textarea>
					<small id="noteD" class="form-text text-muted">Length not
						more than 1500.</small>
				</div>

				<button id="addNote" type="submit" class="btn btn-primary">Add
					Note</button>
			</form>

		</div>

	</div>




	<!-- Footer -->
	<div class="">
		<%@include file="./Components/FooterComp.jsp"%>
	</div>

	<script>
        //:: If user submit the form the details will be reset after user do back.
        let title = document.getElementById("noteTitle");
        let desc = document.getElementById("noteDescription");
        let register = document.getElementById("addNote");

        register.onclick = (e) => {
            setTimeout(() => {
            	title.value = "";
            	desc.value = "";
            }, [500]);
        }
    </script>
</body>
</html>