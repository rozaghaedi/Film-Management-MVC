<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Film"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Films</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./CSS/Style.css" />
</head>
<body>

<header class="p-3 text-bg-dark">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li>Search Films</li>
        </ul>

        <div class="text-end">
          <a href="/CloudEE/home" class="btn btn-outline-light me-2">👈 Back To List</a>
          <!-- Button to navigate to the search page -->
          <a href="/search.jsp" class="btn btn-info">Search Films</a>
        </div>
      </div>
    </div>
</header>

<div class="container">
    <form action="search" method="get" class="row">
        <div class="col-md-4">
            <div class="form-group my-3">
                <label for="id">ID:</label>
                <input id="id" class="form-control" type="text" name="id" placeholder="Search by ID">
            </div>
            <button class="btn btn-primary" type="submit">Search</button>
        </div>
        <div class="col-md-4">
            <div class="form-group my-3">
                <label for="title">Title:</label>
                <input id="title" class="form-control" type="text" name="title" placeholder="Search by Title">
            </div>
            <button class="btn btn-primary" type="submit">Search</button>
        </div>
        <div class="col-md-4">
            <div class="form-group my-3">
                <label for="director">Director:</label>
                <input id="director" class="form-control" type="text" name="director" placeholder="Search by Director">
            </div>
            <button class="btn btn-primary" type="submit">Search</button>
        </div>
    </form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>
