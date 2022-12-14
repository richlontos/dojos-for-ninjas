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
                    <li class="active"><a href="">Home</a></li>
                    <li><a href="/rentals">Rentals</a></li>
                    <li><a href="/postings">Postings</a></li>
                    <li><a href="/roommates">Find A Roommate!</a></li>
                    <li><a href="/myProfile">Profile</a></li>
                    <li><a href="">Contact Us</a></li>
                    <li><a href="/logn">Login</a></li>
                    <li><a href="/regs">Sign Up</a></li>
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


    <footer class="untree_co--site-footer">

        <div class="container">
            <div class="row">
                <div class="col-md-4 pr-md-5">
                    <h3>About Us</h3>
                    <p>Dojos For Ninjas</p>
                    <p><a href="#" class="readmore">Read more</a></p>
                </div>
                <div class="col-md-8 ml-auto">
                    <div class="row">
                        <div class="col-md-3">
                            <h3>Navigation</h3>
                            <ul class="list-unstyled">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Rentals</a></li>
                                <li><a href="#">Posting</a></li>
                                <li><a href="#">Chat Room</a></li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
                        </div>
                        <div class="col-md-9 ml-auto">
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <h3>Address</h3>
                                    <address>175 E Olive Ave 3rd floor<br> Burbank, CA 91502</address>
                                </div>
                                <div class="col-md-6">
                                    <h3>Telephone</h3>
                                    <p>
                                        <a href="#">253-380-1654</a> <br>
                                    </p>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
            <div class="row mt-5 pt-5 align-items-center">
                <div class="col-md-6 text-md-left">
                    <!-- Link back to Untree.co can't be removed. Template is licensed under CC BY 3.0. If you purchased a license you can remove this. -->
                    <p>
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> <a href="index.html">Dojos For Ninjas.co</a>. All Rights Reserved.
                    </p>
                    <!-- Link back to Untree.co can't be removed. Template is licensed under CC BY 3.0. If you purchased a license you can remove this. -->
                </div>
                <div class="col-md-6 text-md-right">
                    <ul class="icons-top icons-dark">
                        <li>
                            <a href="#"><span class="icon-facebook"></span></a>
                        </li>
                        <li>
                            <a href="#"><span class="icon-twitter"></span></a>
                        </li>
                        <li>
                            <a href="#"><span class="icon-instagram"></span></a>
                        </li>
                        <li>
                            <a href="#"><span class="icon-tripadvisor"></span></a>
                        </li>
                    </ul>

                </div>
            </div>
        </div>

    </footer>
</div>

<!-- Search -->
<div class="search-wrap">
    <a href="#" class="close-search js-search-toggle">
        <span>Close</span>
    </a>
    <div class="container">
        <div class="row justify-content-center align-items-center text-center">
            <div class="col-md-12">
                <form action="#">
                    <input type="search" name="s" id="s" placeholder="Type a keyword and hit enter..."  autocomplete="false">
                </form>
            </div>
        </div>
    </div>
</div>

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
</body>
</html>


