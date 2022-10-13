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
    <title>Document</title>
</head>
<body>
<div class="container">
<h1  class="align-content-center">Hello, ${user.userName} Here are some name suggestions...</h1>
    <div class="row">
        <h2>Baby names</h2>
        <div class="float-end">
        <a class="float-end btn-sm btn-primary" href="/books/new">New name</a>
        <a class="float-end btn-sm btn-danger" href="/logout">Logout</a>
        </div>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Origin</th>

            </tr>
            </thead>
            <tbody>
                <c:forEach var="book" items="${books}">
                    <tr>
                        <td><c:out value="${book.id}"></c:out></td>
                        <td>
                            <a href="/books/${book.id}">
                            <c:out value="${book.title}"></c:out></a>
                        </td>
                        <td><c:out value="${book.author}"></c:out></td>
                        <td><c:out value="${book.user.getUserName()}"></c:out></td>

                    </tr>
                </c:forEach>
            </tbody>

        </table>

    </div>
</div>
</body>
</html>