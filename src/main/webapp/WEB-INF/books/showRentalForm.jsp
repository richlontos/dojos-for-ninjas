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
    <title>LoginReg</title>
</head>
<body>
<div class="container">
    <div>
    <h1>${babyName.name}</h1>
        <a class="float-end" href="/babyNames">back to Names</a>
    </div>
    <p>${babyName.user.getUserName()} made the baby name, ${babyName.name} originally from ${babyName.origin}</p>
    <h4>What is the meaning of this name?</h4>
    <p>${babyName.meaning}</p>
    <p>${babyName.gender}</p>

    <c:if test="${user.getId() == babyName.user.getId()}">
    <a href="/babyNames/edit/${babyName.id}">Edit</a>
        <form action="/babyNames/destroy/${babyName.id}" method="post">
            <input type="hidden" name="_method" value="delete">
            <input type="submit" value="Delete">
        </form>
    </c:if>
</div>
</body>
</html>