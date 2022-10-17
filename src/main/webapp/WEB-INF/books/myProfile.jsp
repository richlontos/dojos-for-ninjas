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
    <link rel="stylesheet" href="style.css">

    <title>Dojos For Ninjas</title>
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

    <nav class="untree_co--site-nav js-sticky-nav">
        <div class="container d-flex align-items-center">
            <div class="logo-wrap">
                <a href="/" class="untree_co--site-logo">Dojos For Ninjas</a>
            </div>
            <div class="site-nav-ul-wrap text-center d-none d-lg-block">
                <ul class="site-nav-ul js-clone-nav">
                    <li><a href="/rentals">Rentals</a></li>
                    <li><a href="/postings">Postings</a></li>
                    <li><a href="/roommates">Find A Roommate!</a></li>
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

    <head>

        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

        <link href='https://fonts.googleapis.com/css?family=Lato:400,300' rel='stylesheet' type='text/css'>
    </head>

    <div class="box">
        <div id="overlay" style="margin-top: 100px;">
            <div class="image">
                <div class="trick">

                </div>
            </div>
            <ul class="text">John Doe</ul>
            <div class="text1">Java stack</div>




            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading " role="tab" id="headingOne">
                        <h4 class="panel-title ">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="" aria-controls="collapseOne">
                                <div class="title  btn btn-danger btn-outline btn-lg">ABOUT JOHN</div>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            He enjoys making unique websites and web projects. His hobbies include photography, playing guitar, soccer, and traveling.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                <div class="title btn btn-danger btn-outline btn-lg">SOCIAL</div>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                            His hobbies include photography, playing guitar, soccer, and traveling.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                <div class="title btn btn-danger btn-outline btn-lg">CONTACT</div>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                        <div class="panel-body">



                            <form id="form" class="topBefore">

                                <input id="name" type="text" placeholder="NAME">
                                <input id="email" type="text" placeholder="E-MAIL">
                                <textarea id="message" type="text" placeholder="MESSAGE"></textarea>
                                <input id="submit" type="submit" value="Submit Now!">

                            </form>






                        </div>
                    </div>
                </div>
            </div>
    <!-- End of container -->

    <script src="js/vendor/jquery-3.3.1.min.js"></script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/vendor/bootstrap.min.js"></script>

    <script src="js/vendor/owl.carousel.min.js"></script>

    <script src="js/vendor/jarallax.min.js"></script>
    <script src="js/vendor/jarallax-element.min.js"></script>
    <script sr c="js/vendor/ofi.min.js"></script>

    <script src="js/vendor/aos.js"></script>

    <script src="js/vendor/jquery.lettering.js"></script>
    <script src="js/vendor/jquery.sticky.js"></script>

    <script src="js/vendor/TweenMax.min.js"></script>
    <script src="js/vendor/ScrollMagic.min.js"></script>
    <script src="js/vendor/scrollmagic.animation.gsap.min.js"></script>
    <script src="js/vendor/debug.addIndicators.min.js"></script>


    <script src="js/main.js"></script>

</div>
</body>
</html>