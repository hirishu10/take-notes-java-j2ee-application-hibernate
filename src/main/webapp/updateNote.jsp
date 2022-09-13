
<%@page import="com.entities.NoteConfig"%>
<%@page import="com.factoryHelper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<%@include file="./Components/AllMeta_JS_CSS.jsp"%>


<title>Update Note's</title>
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

			<!-- using Hibernate get the details -->

			<%
			int noteId = Integer.parseInt(request.getParameter("noteId").trim());

			Session showSession = FactoryProvider.getInstance().openSession();

			NoteConfig nNote = (NoteConfig) showSession.get(NoteConfig.class, noteId);

			showSession.close();
			%>






			<form action="UpdateNoteServlet" method="post">
			<input type="text" name="noteId" value="<%=nNote.getNoteId()%>" hidden="true"/>
				<div class="form-group">
					<label for="noteTitle">Update Note Title</label> <input type="text"
						class="form-control" id="noteTitle" aria-describedby="emailHelp"
						placeholder="Enter Note Title" name="note_title"
						value="<%=nNote.getNoteTitle()%>"> <small id="emailHelp"
						class="form-text text-muted">Please write cool title
						Length not more than 100.</small>
				</div>
				<div class="form-group">
					<label for="noteDesc">Update Note Description</label>

					<textarea class="form-control" style="height: 300px;"
						name="note_desc" aria-describedby="noteD"
						placeholder="Enter Note Description" id="noteDescription"><%=nNote.getNoteDesc()%></textarea>
					<small id="noteD" class="form-text text-muted">Length not
						more than 1500.</small>
				</div>

				<button id="updateNote" type="submit" class="btn btn-success">Update
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
        let register = document.getElementById("updateNote");

        register.onclick = (e) => {
            setTimeout(() => {
            	title.value = "";
            	desc.value = "";
            }, [500]);
        }
    </script>
</body>
</html>