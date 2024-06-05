<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add_Note</title>
<%@include file="allFiles/common_css_js.jsp"%>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<%@include file="allFiles/navbar.jsp"%>

	<div class="container-fluid">
		<div class="container">
			<div class="row">
				<div class="col-md-6 mx-auto mt-5">
				<div class="card gls-ef">
				<div class="card-body">
				
				<div class="container text-center mt-2">
							<h3>Add note here</h3>
						</div>

					<form action="addnoteServlet" method="post">

						<div class="form-group">
							<label for="title" class="form-label">Enter Title</label> <input
								type="text" class="form-control" name="note_title" id="title"
								placeholder="Enter here" required>
						</div>

						<div class="form-group">
							<label for="content" class="form-label">Enter Content</label>
							<textarea class="form-control" style="height: 200px" name="note_content"
								id="content" placeholder="Enter here" required></textarea>
						</div>

						<div class="container text-center mt-2">
							<button type="submit" class="btn  btn-outline-primary">Add Note</button>
						</div>

					</form>
					</div>
				
				
				</div>



				</div>
			</div>
		</div>
	</div>
</body>
</html>