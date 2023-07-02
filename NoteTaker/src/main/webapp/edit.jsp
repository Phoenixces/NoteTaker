<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit note</title>
<%@include file="all_js_css.jsp"%>
</head>

<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Edit note:</h1>

		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());

		//crating session to delete note from DB
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);
		%>

		<form action="UpdateServlet" class = "pt-2" method="post">

		<input value = "<%= note.getId()%>" name = "noteId" type = hidden />
			<div class="form-group">
				<label for="title">Note Title</label> <input name="title"
					required="required" type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter note title" value = <%= note.getTitle() %> />
			</div>

			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required="required" id="content"
					placeholder="Enter here" class="form-control" style="height: 320px"><%= note.getContent()%></textarea>
			</div>

			<div class="container text-center">

				<button type="submit" class="btn btn-success">Save</button>
			</div>
		</form>


	</div>
</body>
</html>