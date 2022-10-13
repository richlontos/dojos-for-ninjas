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
<h1  class="align-content-center">Login and Registration</h1>
    <div class="row">
        <div class="col">
            <h2>Register</h2>
            <form:form action="/register" method="post" modelAttribute="newUser">
                <div>
                    <div class="form-group">
                    <form:label path="userName">userName</form:label>
                    <form:input  class="form-control" path="userName"/>
                    <form:errors path="userName"/>
                    </div>
                    <div class="form-group">
                    <form:label path="email">email</form:label>
                    <form:input  class="form-control" path="email"/>
                    <form:errors path="email"/>
                    </div>
                    <div>
                    <form:label path="password">password</form:label>
                    <form:input  class="form-control" path="password"/>
                    <form:errors path="password"/>
                    </div>
                    <div>
                    <form:label path="confirm">confirm password</form:label>
                    <form:input  class="form-control" path="confirm"/>
                    <form:errors path="confirm"/>
                    </div>
                </div>
                <input type="submit" value="register">
            </form:form>
        </div>
        <div class="col">
            <h2>Login</h2>
            <div class="form-group">
                <form:form action="/login" method="post" modelAttribute="newLogin">
                    <div class="form-group">
                        <form:label path="email">email</form:label>
                        <form:input  class="form-control" path="email"/>
                        <form:errors path="email"/>
                    </div>
                    <div>
                        <form:label path="password">password</form:label>
                        <form:input  class="form-control" path="password"/>
                        <form:errors path="password"/>
                    </div>
                <input type="submit" value="login">
                </form:form>
            </div>
        </div>

    </div>
</div>
</body>
</html>