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
    <link rel="stylesheet" href="/css/login.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <title>Document</title>
</head>
<body>
<div class="wrapper">
    <div class="row">
        <div class="col">
                <div class="logo">
                    <img src="/images/ninja.jfif" alt="">
                </div>
                <div class="text-center mt-4 name">
                    Dojos For Ninjas
                </div>
                <form:form action="/register" method="post" modelAttribute="newUser" class="p-3 mt-3">
                    <div>
                        <div class="form-field d-flex align-items-center">
                            <form:input  placeholder="username" class="form-control" path="userName"/>
                            <form:errors path="userName"/>
                        </div>
                        <div class="form-field d-flex align-items-center">
                            <form:input placeholder="Email" class="form-control" path="email"/>
                            <form:errors path="email"/>
                        </div>
                        <div class="form-field d-flex align-items-center">
                            <form:input placeholder="Password" class="form-control" path="password"/>
                            <form:errors path="password"/>
                        </div>
                        <div class="form-field d-flex align-items-center">
                            <form:input placeholder="confirm password" class="form-control" path="confirm"/>
                            <form:errors path="confirm"/>
                        </div>
                    </div>
                    <input type="submit" value="regs" class="btn mt-3">
                </form:form>
            </div>

        <%--        <div class="wrapper">--%>
        <%--            <div class="logo">--%>
        <%--                <img src="https://www.freepnglogos.com/uploads/twitter-logo-png/twitter-bird-symbols-png-logo-0.png" alt="">--%>
        <%--            </div>--%>
        <%--            <div class="text-center mt-4 name">--%>
        <%--                Twitter--%>
        <%--            </div>--%>
        <%--            <form class="p-3 mt-3">--%>
        <%--                <div class="form-field d-flex align-items-center">--%>
        <%--                    <span class="far fa-user"></span>--%>
        <%--                    <input type="text" name="userName" id="userName" placeholder="Username">--%>
        <%--                </div>--%>
        <%--                <div class="form-field d-flex align-items-center">--%>
        <%--                    <span class="fas fa-key"></span>--%>
        <%--                    <input type="password" name="password" id="pwd" placeholder="Password">--%>
        <%--                </div>--%>
        <%--                <button class="btn mt-3">Login</button>--%>

        <%--            </form>--%>
        <%--            <div class="text-center fs-6">--%>
        <%--                <a href="#">Forget password?</a> or <a href="#">Sign up</a>--%>
        <%--            </div>--%>
        <%--        </div>--%>

    </div>


</body>
</html>