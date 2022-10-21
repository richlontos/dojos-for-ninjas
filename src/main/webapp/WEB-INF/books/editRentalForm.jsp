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
    <%--    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->--%>
    <%--    <script src="/webjars/jquery/jquery.min.js"></script>--%>
    <%--    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>--%>
    <title>Document</title>
</head>
<body>
<div class="container">
    <h1  class="align-content-center">Add your own rental!</h1>
    <div class="row">
        <div class="col">
            <div class="form-group">
                <form:form action="/rentalForms/${rentalForm.id}" method="put" modelAttribute="rentalForm">
                    <input type="hidden" name="_method" value="put">
                    <form:input type="hidden" name="user" path="user"></form:input>
                    <div class="form-group">
                        <form:label path="images">Upload Images</form:label>
                        <form:input type="file" class="form-control" path="images" />
                    </div>
                    <div class="form-group">
                        <form:label path="address">address</form:label>
                        <form:input  class="form-control" path="address"/>
                        <form:errors path="address"/>
                    </div>
                    <div>
                        <form:label path="propertyType">Property Type</form:label>
                        <form:select path="propertyType">
                            <form:option value="Apartment" label="Apartment"/>
                            <form:option value="Condos" label="Condos"/>
                            <form:option value="Land" label="Land"/>
                            <form:option value="Multi Family Home" label="Multi Family Home"/>
                            <form:option value="Single Family Home" label="Single Family Home"/>
                            <form:option value="Townhouse" label="Townhouse"/>
                            <form:option value="Trailor" label="Trailor"/>
                        </form:select>
                    </div>
                    <div>
                        <form:label path="price">Price</form:label>
                        <form:input type="number" class="form-control" path="price"/>
                        <form:errors path="price"/>
                    </div>
                    <div>
                        <form:label path="sqft">Add sqft</form:label>
                        <form:input  class="form-control" path="sqft"/>
                        <form:errors path="sqft"/>
                    </div>
                    <div>
                        <form:label path="bedrooms">Add bedrooms</form:label>
                        <form:input type="number" class="form-control" path="bedrooms"/>
                        <form:errors path="bedrooms"/>
                    </div>
                    <div>
                        <form:label path="bathrooms">Add bathrooms</form:label>
                        <form:input type="number" class="form-control" path="bathrooms"/>
                        <form:errors path="bathrooms"/>
                    </div>
                    <div>
                        <form:label path="parking">parking</form:label>
                        <form:select path="parking">
                            <form:option value="On site parking" label="On site parking"/>
                            <form:option value="garage" label="Garage"/>
                            <form:option value="Both" label="Both"/>

                        </form:select>
                    </div>
                    <div>
                        <form:label path="requirements">Add requirements!</form:label>
                        <form:input type="textarea"  class="form-control" path="requirements"/>
                        <form:errors path="requirements"/>
                    </div>
                    <div>
                        <form:label path="animals">Animal friendly?</form:label>
                        <form:input class="form-control" path="animals"/>
                        <form:errors path="animals"/>
                    </div>
                    <div>
                        <form:label path="utilities">Utilities</form:label>
                        <form:select path="utilities">
                            <form:option value="Central/Air Conditioning" label="Air Conditioning"/>
                            <form:option value="heat" label="heat"/>
                            <form:option value="Dishwasher" label="Dishwasher"/>
                            <form:option value="Refridgerator" label="Refridgerator"/>
                            <form:option value="In-Unit Laundrey" label="In-Unit Laundrey"/>
                            <form:option value="On-site Laundrey" label="On-site Laundrey"/>
                            <form:option value="washer/dryer connections" label="washer/dryer connections"/>
                        </form:select>
                    </div>
                    <div>
                        <form:label path="amenities">Amenities</form:label>
                        <form:select path="amenities">
                            <form:option value="Pool" label="Pool"/>
                            <form:option value="Gym" label="Gym"/>
                            <form:option value="Hottub" label="Hottub"/>
                            <form:option value="Patio" label="Patio"/>
                            <form:option value="Balcony" label="Balcony"/>
                        </form:select>
                    </div>
                    <input type="submit" value="Submit">
                </form:form>
            </div>
        </div>
        <c:if test="${user.getId() == rentalForm.user.getId()}">
            <a href="/rentalForms/edit/${rentalForm.id}">Edit</a>
            <form action="/rentalForms/destroy/${rentalForm.id}" method="post">
                <input type="hidden" name="_method" value="delete">
                <input type="submit" value="Delete">
            </form>
        </c:if>
    </div>
</div>
</body>
</html>