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

    <h1>Change: ${currentName.givenname }</h1>
    <div>

        <form:form method="post" action="/api/update/name/${currentName.id }" modelAttribute="name">
            <div>
			<span>
				<form:label path="givenname">Name:</form:label>
			</span>

                <form:input path="givenname" disabled="true"  value="${currentName.givenname }"  />
                <form:input path="givenname" type="hidden"  value="${currentName.givenname }"  />
                <form:errors path="givenname" />
            </div>

            <div>
			<span>
				<form:label path="gender">Gender</form:label>
			</span>
                <form:select path="gender" value="${currentName.gender }">
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
                <form:input path="orgin" type="text" value="${currentName.orgin }" />
                <form:errors path="orgin" class="error"/>
            </div>

            <div>
			<span>
				<form:label path="meaning">Meaning</form:label>
			</span>
                <form:input path="meaning" type="text" value="${currentName.meaning }" />
                <form:errors path="meaning" class="error"/>
            </div>

            <input type="hidden" name="designation" value="${currentName.designation.id }"/>
            <input type="hidden" name="id" value="${currentName.id }"/>
            <input type="submit" class="submit" value="Submit"/>
        </form:form>


        <form action="/delete/name/${currentName.id}" method="post" class="delete">
            <input type="hidden" name="_method" value="delete">
            <input type="submit" value="Delete">
        </form>
        <a href="/dashboard" class="cancel">Cancel</a>

    </div>
</div>
</body>
</html>