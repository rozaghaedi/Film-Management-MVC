<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Film"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session = "false" %>
<!DOCTYPE html>
<html data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <title>Film</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    <link href="./css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Satisfy&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
</head>
<body style="background-color:black;">

<header class="text-bg-dark">
    <div class="banner_navbar">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>

        <div class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
        <div class="d-flex">
        <h3 class="text-danger">Lens</h3>
          <div class="container">
		   	<div class="row row-reverse">
		   		<div>
		   		<form action="search" method="get" class="d-flex justify-content-between">
		   			<input class="form-control" name="title" value="${search }" placeholder="Search Film..."/>
		   			<input type="submit" class="btn btn-danger" value="Search" />
		   		</form>
   		</div>
        </div>
          
   	</div>
   </div>
        </div>
		
        <div class="text-end">
          <a href="/CloudEE/insert" class="btn btn-danger me-2">Add Film +</a>
        </div>
    </div>
</header>
        <!-- Bootstrap Toast Component -->
        <div class="toast fixed-top-center dark" role="alert" aria-live="assertive" aria-atomic="true" data-delay="3000">
            <div class="toast-header d-flex justify-content-between">
                <strong class="mr-auto">Success</strong>
                <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
            <div class="toast-body">
                
            </div>
        </div>


   <div class="banner">
  		 <!-- <h1>Movies Portal</h1>
  		 <h2> Just for you</h2> -->
  		 
   </div>
   
<table class="table table-hover table-dark" style="width:80%; margin-left:100px;">
  <tr>
  	<td>#</td>
  	<td>Film Title</td>
  	<td>Director</td>
  	<td>Stars</td>
  	<td>Year</td>
  	<td>Review</td>
  	<td>Actions</td>
  </tr>
  <c:forEach items="${filmArray}" var="film">
    <tr>
  		<td>${film.getId()}</td>
  		<td><b>${film.getTitle()}</b></td>
  		<td>${film.getDirector()}</td>
  		<td>${film.getStars()}</td>
  		<td>${film.getYear()}</td>
  		<td>
  			<span title="${film.getReview()}" class="d-inline-block text-truncate" style="max-width: 150px;">
				${film.getReview()}
			</span>
		</td>
  		<td>
  			<div class="btn-group" role="group" aria-label="Basic mixed styles example">
  				<a href="/CloudEE/delete?id=${film.getId()}" class="btn btn-danger"><i class="fa fa-trash" aria-hidden="true"></i></a>
  				<a href="/CloudEE/update?id=${film.getId()}" class="btn btn-warning"><i class="fa fa-pencil" aria-hidden="true"></i></a>
			</div>
  		</td>
  	</tr>
  </c:forEach>
</table>
<script>
        document.addEventListener('DOMContentLoaded', function () {
            // Function to parse URL parameters
            function getUrlParameter(name) {
                name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
                var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
                var results = regex.exec(location.search);
                return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
            };

            // Check if success message is present in the URL
            var successParam = getUrlParameter('success');
            if (successParam !== '') {
                // Show the toast with the success message
                var toastEl = document.querySelector('.toast');
                var toast = new bootstrap.Toast(toastEl);
                toastEl.querySelector('.toast-body').textContent = successParam;
                toast.show();

                // Remove success message from the URL
                var newUrl = window.location.href.replace(/[\?&]success=[^&#]*/, '');
                history.replaceState({}, document.title, newUrl);
            }
        });
    </script>

<!--I think for  Update and Delete actions  I need JavaScript or form submission with film ID. -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

</body>
</html>

