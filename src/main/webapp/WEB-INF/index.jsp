<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!-- c:out ; c:forEach ; c:if -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (like dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: "Orbitron", sans-serif;
        }

        body {
            background-image: url('https://i.imgur.com/vxXIDiJ.jpg');
            background-size: cover;
            background-position: center top;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        .title {
            font-size: 100px;
            margin-bottom: 50px;
            background: linear-gradient(#06348a, #6a82fb);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent
        }

        form input {
            font-size: 28px;
            letter-spacing: 3px;
            background: transparent;
            color: #fff;
            padding: 0 0 10px 5px;
            margin: 25px 0;
            outline: none;
        }

        .user-input {
            border: none;
            border-bottom: 1px solid #fff;
        }

        .user-input:focus {
            border-bottom: 1px solid;
            border-image: linear-gradient(to right, #00f260, #0575e6);
            border-image-slice: 1;
        }

        .submit-button {
            width: 100%;
            text-transform: uppercase;
            font-weight: 500;
            color: #fff;
            padding: 15px 0;
            margin: 50px 0 0 0;
            border: 1px solid #fff;
            border-radius: 50px;
            cursor: pointer;
            transition: .3s;
        }

        .submit-button:hover {
            background: rgba(255, 255, 255, .3);
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Joy Bundler</h1>


<div class="row">
    <div class="col">
        <h2>Register</h2>
        <form:form method="post" action="/api/register" modelAttribute="newUser">
            <div>
                <div class="form-group">
                    <form:label path="userName">userName</form:label>
                    <form:input  class="form-control" path="userName"/>
                    <form:errors path="userName"/>
                    <input type="email" placeholder="Email" class="user-input">--%>
                    <input type="password" placeholder="Password" class="user-input">--%>
                    <input type="submit" value="Start" class="submit-button">--%>
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
            <form:form method="post" action="/api/login" modelAttribute="newLogin">
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




</body>
</html>