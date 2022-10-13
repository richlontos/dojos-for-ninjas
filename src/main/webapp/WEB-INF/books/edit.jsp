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
    <h1  class="align-content-center">New Book</h1>
    <div class="row">
        <div class="col">
            <div class="form-group">
                <form:form action="/books/${book.id}" method="put" modelAttribute="book">
                    <input type="hidden" name="_method" value="put">
                    <form:input type="hidden" name="user" path="user"></form:input>
                    <div class="form-group">
                        <form:label path="title">title</form:label>
                        <form:input  class="form-control" path="title"/>
                        <form:errors path="title"/>
                    </div>
                    <div>
                        <form:label path="author">author</form:label>
                        <form:input  class="form-control" path="author"/>
                        <form:errors path="author"/>
                    </div>
                    <div>
                        <form:label path="myThoughts">myThoughts</form:label>
                        <form:input type="textarea"  class="form-control" path="myThoughts"/>
                        <form:errors path="myThoughts"/>
                    </div>
                    <input type="submit" value="edit book">
                </form:form>
            </div>
        </div>

    </div>
</div>
</body>
</html>