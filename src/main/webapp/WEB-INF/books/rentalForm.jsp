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
    <link rel="stylesheet" href="/css/rentalForm.css">
    <script src="/js/rentalForm.js"></script>
    <title>Dojos For Ninjas!</title>
</head>
<body>
<div id="zillow" class="zillow-container">
    <h3>${user.userName}, here are some rentals for you to explore!</h3>

    <div class="zcards-container">

        <div v-for="listing in listings">
            <zillow-card-component v-bind:listing="listing"></zillow-card-component>
        </div>

    </div>
</div>
<c:forEach var="rentalForm" items="${rentalForms}">
<div id="zcards">
    <div class="card">
        <div class="photo" v-bind:style="{'background-image': wrapURL(listing.imgURL)}" src="${rentalForm.images}">
            <div class="time">${rentalForm.createdAt}</div>
            <div class="heart">
                <svg id="heart" width="40px" height="35px" :class="{ love: isLoved, noLove: notLoved}" @click="isLoved = !isLoved, notLoved = !notLoved">
                    <path id="heart-path" d="M 20 9 V 9 C 24 0 32 0 36 8.64 S 20 30 20 30.24 C 20 30.24 20 30 20 30.24 S 0 17.28 4 8.64 C 8 0 16 0 20 9"></path>
                </svg>
            </div>
        </div>
        <div class="description">
            <div class="price">$ ${rentalForm.price}</div>
            <div class="info">${rentalForm.bedrooms} bds ${rentalForm.bathrooms} ba ${rentalForm.sqft} sqft - For sale by ${rentalForm.user.userName}</div>
            <div class="address">${rentalForm.address}</div>
            <div class="address">Owners Requirements:</divclass>
            <div class="address">${rentalForm.requirements}</div>
                <div class="address">Animals allowed: </divclass>
                    <div class="address">${rentalForm.animals}</div>
        </div>
    </div>
</div>
</c:forEach>



<a href="/rentalForms/new">Add your Own Rental</a>
</body>
</html>