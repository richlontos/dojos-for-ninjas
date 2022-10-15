<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/css/navbar.css">
    <title>Dojos For Ninjas!</title>
</head>
<body>
<!-- Start Navigation Bar -->
<nav class="navbar">
    <ul class="menu">
        <li>
            <a href="#">Rentals</a>
        </li>
        <li>
            <a href="#">Postings</a>
        </li>
        <li>
            <a href="#">Find a roommate!</a>
        </li>
        <li>
            <a href="#">Chat Room</a>
        </li>
        <li>
            <a href="#">My profile</a>
        </li>
        <li>
            <a href="#">Settings</a>
        </li><li>
        <a href="/logout">Logout</a>
    </li>
        <ul>
</nav>
<!-- End Navigation Bar -->
</body>
</html>