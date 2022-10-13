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
<div>

    <nav>
        <a href="/logout">Logout</a>
    </nav>
    <h2>Hello ${logged.fullName }! Here are some name suggestions</h2>
    <div>
        <h3>Baby Names: Votes: </h3>
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
            <c:forEach var="nm" items="${names }">
                <div>

                    <tr>
                        <c:set var="votedFor" value="upvote"/>
                        <c:forEach var="use" items="${nm.user}">
                            <c:if test = "${use.id == logged.id }">
                                <c:set var="votedFor" value="You've Voted"/>
                            </c:if>
                        </c:forEach>
                        <form:form method="post" action="/api/vote"  modelAttribute="vote" >
                            <input type="hidden" name=name value="${ nm.id}" />
                            <input type="hidden" name="user" value="${ logged.id}" />
                            <input class="button vote" type="submit" value="${votedFor }">
                        </form:form>
                        <td><p><a href="/name/${nm.id}">${nm.givenname }</a></p></td>
                        <td><p><strong>Gender:</strong> ${nm.gender }</p></td>
                        <td><p><strong>Orgin:</strong> ${nm.orgin }</p></td>
                        <td><p>${ nm.user.size() }</p>
                    </tr>
                </div>
            </c:forEach>
            </tbody>
        </table>

    </div>
    <a class="btn btn-dark" href="/add/name">New Name</a> |
</div>

</body>
</html>