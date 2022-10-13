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
    <h1>${name.givenname }</h1>
    <p class="name">(Added by: ${name.designation.fullName })</p>
    <p class="gender">Gender: ${name.gender }</p>
    <p class="orgin">Orgin: ${name.orgin }</p>

    <c:set var="votedFor" value="false"/>

    <c:forEach var="vt" items="${ name.user}">
        <c:choose>
            <c:when test="${vt.id.equals(userName.id)}">
                <p style="color: blue">You've voted for this name!</p>
                <c:set var="votedFor" value="true"/>
            </c:when>
        </c:choose>
    </c:forEach>
    <h3>Meaning: ${name.meaning }</h3>

    <c:if test = "${votedFor == false}">
        <form:form method="post" action="/api/vote"  modelAttribute="vote" >
            <input type="hidden" name=name value="${ name.id}" />
            <input type="hidden" name="user" value="${ userName.id}" />
            <input class="button vote yes" type="submit" value="Vote!!">
        </form:form>
    </c:if>



    <div>

        <c:choose>
            <c:when test="${name.designation.id.equals(userName.id) }">
                <a  href="/edit/name/${name.id}" class="btn btn-secondary">Edit</a>
            </c:when>
        </c:choose>

    </div>
</div>
</body>
</html>