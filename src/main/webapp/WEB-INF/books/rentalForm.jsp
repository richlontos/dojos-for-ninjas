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

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Untree.co">
    <link rel="shortcut icon" href="favicon.png">

    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond:400,500i,700|Roboto:300,400,500,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="vendor/icomoon/style.css">
    <link rel="stylesheet" href="vendor/owl.carousel.min.css">
    <link rel="stylesheet" href="vendor/aos.css">
    <link rel="stylesheet" href="vendor/animate.min.css">
    <link rel="stylesheet" href="vendor/bootstrap.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="css/rentalProfile.css">
    <link rel="stylesheet" href="css/rentProfileBack.css">

</head>
<body>

<div id="untree_co--overlayer"></div>
<div class="loader">
    <div class="spinner-border text-primary" role="status">
        <span class="sr-only">Loading...</span>
    </div>
</div>


<nav class="untree_co--site-mobile-menu">
    <div class="close-wrap d-flex">
        <a href="#" class="d-flex ml-auto js-menu-toggle">
            <span class="close-label">Close</span>
            <div class="close-times">
                <span class="bar1"></span>
                <span class="bar2"></span>
            </div>
        </a>
    </div>
    <div class="site-mobile-inner"></div>
</nav>


<div class="untree_co--site-wrap">

    <nav class="untree_co--site-nav dark js-sticky-nav">
        <div class="container d-flex align-items-center">
            <div class="logo-wrap">
                <a href="/" class="untree_co--site-logo">Dojos For Ninjas</a>
            </div>
            <div class="site-nav-ul-wrap text-center d-none d-lg-block">
                <ul class="site-nav-ul js-clone-nav">
                    <li class="has-children">
                    <li><a href="/roommates">Find A Roommate!</a></li>
                    <li><a href="/rentalForms/new">Add A Rentals</a></li>
                    <li><a href="/myProfile">Profile</a></li>
                    <li><a href="/contact">Contact Us</a></li>
                    <li><a href="/logout">Logout</a></li>
                </ul>
            </div>
            <div class="icons-wrap text-md-right">

                <ul class="icons-top d-none d-lg-block">
                    <li class="mr-4">
                        <a href="#" class="js-search-toggle"><span class="icon-search2"></span></a>
                    </li>
                    <li>
                        <a href="#"><span class="icon-facebook"></span></a>
                    </li>
                    <li>
                        <a href="#"><span class="icon-twitter"></span></a>
                    </li>
                    <li>
                        <a href="#"><span class="icon-instagram"></span></a>
                    </li>
                </ul>

                <!-- Mobile Toggle -->
                <a href="#" class="d-block d-lg-none burger js-menu-toggle" data-toggle="collapse" data-target="#main-navbar">
                    <span></span>
                </a>
            </div>
        </div>
    </nav>

<c:forEach var="rentalForm" items="${rentalForms}">
<div class="portfoliocard">
    <div class="coverphoto"></div>
    <div class="profile_picture"></div>
    <div class="left_col">
        <div class="followers">
            <div class="follow_count">Price: </div>

            <div class="follow_count">$ ${rentalForm.price}</div>
            <c:if test="${user.getId() == rentalForm.user.getId()}">
                    <div>
                        <a href="/rentalForms/edit/${rentalForm.id}" class="btn btn-secondary" style="width: 124px;
                         margin-left: -28px;">Edit</a>
                    </div>
                <div>
                <form action="/destroyRentalForm/destroy/${rentalForm.id}" method="post">
                    <input type="hidden" name="_method" value="delete">
                    <input type="submit" value="Delete" class="btn btn-danger" style="margin: -3px 0px 0px -28px;">
                </form>

                </div>

<%--                <form action="/babyNames/edit/${rentalForm.id}" method="post">--%>
<%--                    <input type="hidden" name="_method" value="Edit">--%>
<%--                    <input type="submit" value="Edit" class="btn btn-secondary" style="margin: -3px 0px 0px -28px;">--%>
<%--                </form>--%>
            </c:if>
        </div>
    </div>
    <div class="right_col">
        <h2 class="name">For sale by ${rentalForm.user.userName}</h2>
        <h3 class="location">${rentalForm.address}</h3>
        <ul class="contact_information">
            <li class="work">${rentalForm.bedrooms} bds</li>
            <li class="website">${rentalForm.bathrooms} ba</li>
            <li class="mail">${rentalForm.sqft} sqft</li>
            <li class="phone">Requirements: ${rentalForm.requirements}</li>
            <li></li>
            <li class="resume">Animals allowed: ${rentalForm.animals}</li>
        </ul>
    </div>

</div>
</c:forEach>

    <script src="js/vendor/jquery-3.3.1.min.js"></script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>

    <script src="js/vendor/owl.carousel.min.js"></script>

    <script src="js/vendor/jarallax.min.js"></script>
    <script src="js/vendor/jarallax-element.min.js"></script>
    <script src="js/vendor/ofi.min.js"></script>

    <script src="js/vendor/aos.js"></script>

    <script src="js/vendor/jquery.lettering.js"></script>
    <script src="js/vendor/jquery.sticky.js"></script>

    <script src="js/vendor/jquery.fancybox.min.js"></script>

    <script src="js/vendor/TweenMax.min.js"></script>
    <script src="js/vendor/ScrollMagic.min.js"></script>
    <script src="js/vendor/scrollmagic.animation.gsap.min.js"></script>
    <script src="js/vendor/debug.addIndicators.min.js"></script>


    <script src="js/main.js"></script>


</body>
</html>