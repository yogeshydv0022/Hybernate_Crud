
<%@page import="org.hibernate.Query"%>
<%@page import="java.util.List"%>

<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.factoryProvider"%>
<%@page import="com.Entities.Note" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show_notes</title>
<link rel="stylesheet" href="css/style.css" />
<%@include file="allFiles/common_css_js.jsp"%>
</head>
<body>
	<%@include file="allFiles/navbar.jsp"%>
	<div class="container bg-background">
	<br>
	<h1 class="text-uppercase">All Notes:</h1>
	<div class="row">
	<div class="col-12">
	
	
	<%
	Session s=factoryProvider.getFactory().openSession();
	Query q=s.createQuery("from Note");
	List<Note> list=q.list();
	
	for(Note note:list)
	{%>
	
	<div class="card mt-3">
  <img src="img/pencil.png" style="width:100px;"class="card-img-top mt-3 my-3" alt="...">
  <div class="card-body">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%=note.getContent() %></p>
    <p class=""><b> Add Date : <%=note.getAdddate()%></b></p>
    <div class="container text-center">
    <a href="deleteServlet?note_id=<%=note.getId()%>" class="btn btn-outline-danger">Delete</a>
    <a href="editNote.jsp?note_id=<%=note.getId() %>" class="btn btn-outline-primary">Update</a>
    </div>
  </div>
</div>
	
		
	
	
	<%
	}
	s.close();
	
	%>
	
	</div>
	</div>
	
	
	
	
	</div>
</body>
</html>