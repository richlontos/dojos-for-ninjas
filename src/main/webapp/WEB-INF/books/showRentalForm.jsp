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
    <title>Dojos For Ninjas!</title>
</head>
<body>
<div class="container">
        <a class="float-end" href="/showRental">Back to Rentals</a>
    </div>

</div>
        <div>
            <div>For sale by ${rentalForm.user.getUserName()}</div>
            <div>${rentalForm.bedrooms} bds</div>
            <div>${rentalForm.bathrooms} ba</div>
            <div>$ ${rentalForm.price}</div>
            <div>${rentalForm.sqft} sqft </div>
            <div>${rentalForm.address}</div>
            <div>Owners Requirements:</div>
                <div>${rentalForm.requirements}</div>
            <div>Animals Allowed:</div>
                <div>${rentalForm.requirements}</div>
            <div>Amenities:</div>
            <div>${rentalForm.amenities}</div>
            <div>Utilities:</div>
            <div>${rentalForm.utilities}</div>
            <div>Images:</div>
            <div>${rentalForm.images}</div>
            <div>Parking:</div>
            <div>${rentalForm.parking}</div>
            <div>Property type:</div>
            <div>${rentalForm.propertyType}</div>
            <div>${rentalForm.requirements}</div>
            </div>
        </div>
    <c:if test="${user.getId() == rentalForm.user.getId()}">
        <a href="/rentalForms/edit/${rentalForm.id}">Edit</a>
        <form action="/rentalForms/destroy/${rentalForm.id}" method="post">
            <input type="hidden" name="_method" value="delete">
            <input type="submit" value="Delete">
        </form>
    </c:if>
</body>
</html>
