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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Untree.co">
    <link rel="shortcut icon" href="favicon.png">

    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:400,500i,700|Roboto:300,400,500,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="vendor/icomoon/style.css">
    <link rel="stylesheet" href="vendor/owl.carousel.min.css">
    <link rel="stylesheet" href="vendor/aos.css">
    <link rel="stylesheet" href="vendor/animate.min.css">
    <link rel="stylesheet" href="vendor/bootstrap.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="style.css">

    <title>Dojos For Ninjas</title>
    <style type="text/css">
        body {
            background-image: url('http://crunchify.com/bg.png');
        }
    </style>
</head>
<body>
<br>
<div style="text-align:center">
    <h2>
        Hey You..!! This is your 1st Spring MCV Tutorial..<br> <br>
    </h2>
    <h3>
        <form action="/welcomeTwo">
            Street Address:<br>
            <input type="text" name="myAddress">
            <br>
            City and Zip:<br>
            <input type="text" name="cityZip">
            <br>
            <input type="submit" value="Submit">
        </form>

        <a href="welcome.html">Click here to See Welcome Message... </a>(to
        check Spring MVC Controller... @RequestMapping("/welcome"))
    </h3>
</div>
</body>
</html>