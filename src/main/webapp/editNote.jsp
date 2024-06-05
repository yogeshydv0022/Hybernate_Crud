<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.factoryProvider"%>
<%@page import="com.Entities.Note"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit_Note</title>
<%@include file="allFiles/common_css_js.jsp"%>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<%@include file="allFiles/navbar.jsp"%>
	<h1></h1>
	<%
	int noteId = Integer.parseInt(request.getParameter("note_id").trim());

	Session s = factoryProvider.getFactory().openSession();

	Note note = s.get(Note.class, noteId);
	%>
	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-md-6 offset-lg-3 mt-5">
					<div class="card shadow-lg bg-body-tertiary rounded">
						<div class="card-body">

							<div class="container text-center mt-2">
								<h3>Add note here</h3>
								<form action="updateServlet" method="post">
									<fieldset disabled>
										
										<h2> Note Id : <%=note.getId()%></h2>	
									</fieldset>
									<div class="form-group">
										<label for="title" class="form-label">Enter Title</label> <input
											type="text" class="form-control" name="note_title" id="title"
											placeholder="Enter here" required
											value="<%=note.getTitle()%>" />
									</div>

									<div class="form-group">
										<label for="content" class="form-label">Enter Content</label>
										<textarea class="form-control" style="height: 200px"
											name="note_content" id="content" placeholder="Enter here"
											required><%=note.getContent()%></textarea>

									</div>

									<div class="container text-center mt-2">
										<button type="submit" class="btn  btn-outline-primary">Add
											Note</button>
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>