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
</head>
<body>
<div class="container">
    <h1>Add a Name</h1>
    <div>
        <form:form method="post" action="/api/add/name" modelAttribute="name">
            <div>
			<span>
				<form:label path="givenname">New Name</form:label>
			</span>
                <form:input path="givenname" type="text" class="givename"/>
                <form:errors path="givenname" class="error"/>
                <p>${error }</p>
            </div>

            <div>
			<span>
				<form:label path="gender">Typical Gender</form:label>
			</span>
                <form:select path="gender">
                    <form:option value="male">Male</form:option>
                    <form:option value="female">Female</form:option>
                    <form:option value="nonbinary">Nonbinary</form:option>
                    <form:option value="neutral">Neutral</form:option>
                </form:select>
                <form:errors path="gender" class="error"/>
            </div>

            <div>
			<span>
				<form:label path="orgin">Orgin</form:label>
			</span>
                <form:input path="orgin" type="text" />
                <form:errors path="orgin" class="error"/>
            </div>

            <div>
			<span>
				<form:label path="meaning">Meaning</form:label>
			</span>
                <form:input path="meaning" type="text" />
                <form:errors path="meaning" class="error"/>
            </div>

            <input type="hidden" name="designation" value="${userName.id }"/>
            <input type="submit" value="Add Name" class="submit"/>
            <a href="/dashboard" class="cancel">Cancel</a>
        </form:form>
    </div>
</div>
</body>
</html>