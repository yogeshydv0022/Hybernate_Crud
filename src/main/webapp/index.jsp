<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<%@include file="allFiles/common_css_js.jsp" %>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<!-- Add Navbar -->
<%@include file="allFiles/navbar.jsp" %>

 <section class="d-flex justify-content-center align-items-center" style="background:linear-gradient(rgba(0,0,0,.7),rgba(0,0,0,.7)),url(./img/banner.jpg);
		width: 100%;height: 92.6vh;background-size: cover; color: ghostwhite; background-position: center;">
		<div class="text-center">

			<h1 class="font-wight-bold">Create A Note..</h1>
			<p class="text-center">Start Collecting your Notes in very smarter way. we provide very efficient and smarter way of handling
				Notes,</p>	
			<button class="btn btn-outline-primary"><a class="nav-link" href="addNote.jsp">Add Note..</a></button>
		</div>
		</section>


</body>
</html>