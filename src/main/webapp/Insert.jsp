<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Film"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Film</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/style.css" />
</head>
<body class="bg-container">
<header class="text-bg-dark">
    <div class="banner_navbar">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>
        
        <div class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <h3>Lens</h3>
        </div>


		<div class="text-end">
          <a href="/CloudEE/home" class="btn btn-danger me-2">👈 Back To List</a>
        </div>
    </div>
</header>

<div class="container">
	<div class="row justify-content-md-center align-items-center form-container">
	<div class="col col-lg-5">
	<form action="insert" method="post" class="row form-component">
	<input type="hidden" name="action" value="insertFilm">
		<div class="col-md-6">
			<div class="form-group my-3">
				<label for="title">Title:</label>
				<input id="title" class="form-control" type="text" name="title" placeholder="Enter Title" required="required">
			</div>
		</div>	
		<div class="col-md-6">
			<div class="form-group my-3">
				<label for="year">Year:</label>
				<input id="year" class="form-control" type="number" min="1700" max="2025" name="year" placeholder="Enter Year" required="required">
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group my-3">
				<label for="director">Director:</label>
				<input id="director" class="form-control" type="text" name="director" placeholder="Enter Director Name" required="required">
			</div>
		</div>
		<div class="col-md-6">
			<div class="form-group my-3">
				<label for="stars">Stars:</label>
				<input id="stars" class="form-control" type="text" name="stars" placeholder="Enter Stars Name" required="required">
			</div>
		</div>
		<div class="col-md-12">
			<div class="form-group my-3">
				<label for="review">Review:</label>
				<textarea id="review" class="form-control"  name="review" placeholder="Enter Review" required="required"></textarea>
			</div>
		</div>
		<div class="col-md-12 text-center mt-2">
			<button class="btn btn-danger w-100" type="submit">Save Film</button>
		</div>
	</form>
	</div>
	</div>
</div>

<!--I think for  Update and Delete actions  I need JavaScript or form submission with film ID. -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

</body>
</html>
