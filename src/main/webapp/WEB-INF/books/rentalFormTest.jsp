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
<%--    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">--%>
<%--    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->--%>
<%--    <script src="/webjars/jquery/jquery.min.js"></script>--%>
<%--    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>--%>
    <title>Document</title>
</head>
<body>
<div class="container">
    <h1  class="align-content-center">Welcome, ${user.userName} </h1>
    <div class="row">
        <h2>Baby Names</h2>
        <div class="float-end">
            <a class="float-end btn-sm btn-primary" href="/rentalForms/new">Add Baby Name</a>
            <a class="float-end btn-sm btn-danger" href="/logout">Logout</a>
        </div>
            <c:forEach var="rentalForm" items="${rentalForms}">
            <tr>
                <td><c:out value="${babyName.id}"></c:out></td>
                <td>
                    <a href="/rentalForms/${rentalForm.id}">
                        <c:out value="${rentalForm.name}"></c:out></a>
                </td>
                <td><c:out value="${rentalForm.price}"></c:out></td>
                <td><c:out value="${rentalForm.address}"></c:out></td>
                <td><c:out value="${rentalForm.user.userName}"></c:out></td>
                </c:forEach>
            </tbody>

        </table>

    </div>
</div>
</body>
</html>