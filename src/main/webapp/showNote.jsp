<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.entities.NoteConfig"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.factoryHelper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<%@include file="allMeta_JS_CSS.jsp"%>


<title>All Note's</title>
</head>
<body>

	<div class="">
		<%@include file="NavComp.jsp"%>
	</div>


	<div
		style="max-width: 100%; height: 85vh;
	/* background-color:red; */
	/* display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center; */ font-family: sans-serif; padding-top: 50px;">

		<div class="container">
			<!-- All Notes's Card -->


			<!-- Get All Notes -->

			<%
			Session showSession = FactoryProvider.getInstance().openSession();
			try {
				Query query = showSession.createQuery("from NoteConfig");
				List<NoteConfig> allNotes = query.list();
				for (NoteConfig nNote : allNotes) {
					//out.println("<h6>" + nNote.getNoteTitle() + "</h6>");
			%>


			<div class="card mb-2" style="width: 100%;"
				id="<%=nNote.getNoteId()%>">
				<img src="image/notepad.png" class="card-img-top" alt="notepad"
					style="width: 50px; height: 50px; margin: 10px;">
				<div class="card-body">
					<h5 class="card-title">
						Title:
						<%=nNote.getNoteTitle()%></h5>
					<p class="card-text">
						Description:
						<%=nNote.getNoteDesc()%></p>
					<a href="DeleteServlet?noteId=<%=nNote.getNoteId()%>"
						class="btn btn-danger">Delete</a> <a
						href="updateNote.jsp?noteId=<%=nNote.getNoteId()%>"
						class="btn btn-success">Update</a>

					<!--  -->
					<span class="text-end" style="right: 0;">Last Updated: <%=new Date(nNote.getCreateDate().toLocaleString())%></span>



				</div>
			</div>




			<%
			}
			} catch (Exception e) {
			e.printStackTrace();
			}

			showSession.close();
			%>




			<!--  -->
		</div>








	</div>



	<!-- Footer -->
	<div class="">
		<%@include file="FooterComp.jsp"%>
	</div>

</body>
</html>