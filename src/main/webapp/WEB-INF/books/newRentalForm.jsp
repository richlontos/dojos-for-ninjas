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

    <link rel="stylesheet" href="../vendor/icomoon/style.css">
    <link rel="stylesheet" href="../vendor/owl.carousel.min.css">
    <link rel="stylesheet" href="../vendor/aos.css">
    <link rel="stylesheet" href="../vendor/animate.min.css">
    <link rel="stylesheet" href="../vendor/bootstrap.css">
    <!-- Theme Style -->
    <link rel="stylesheet" href="../style.css">

    <title>Dojos For Ninjas</title>
</head>
<body style="background: none">

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
                    <li><a href="/showRental">Postings</a></li>
                    <li><a href="/roommates">Find A Roommate!</a></li>
                    <li><a href="/myProfile">Profile</a></li>
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

    <main class="untree_co--site-main">


        <div class="untree_co--site-section">
            <div class="container">

                <div class="row">
                    <div class="col-12" data-aos="fade-up">
                        <h2 class="display-4 mb-5">Add Your Rental!</h2>
                    </div>
                    <div class="col-md-6 mb-5 mb-md-0" data-aos="fade-up" data-aos-delay="100">

                        <form:form action="/rentalForms" method="post" modelAttribute="rentalForm">
                            <form:hidden path="user" value="${rentalForm.setUser(user)}"></form:hidden>
                            <div class="form-group">
                                <form:label path="images">Upload Images</form:label>
                                <form:input type="file" class="form-control" path="images" />
                            </div>
                            <div class="form-group">
                                <form:label path="address">address</form:label>
                                <form:input  class="form-control" path="address"/>
                                <form:errors path="address"/>
                            </div>
                            <div class="form-group">
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
                            <div class="form-group">
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
                            <div class="form-group">
                                <input type="submit" value="Send" class="btn btn-black px-5 text-white">
                            </div>
                        </form:form>
                    </div>
                    <div class="col-md-4 ml-auto"  data-aos="fade-up" data-aos-delay="200">
                        <div class="media-29190">
                            <span class="label">Email</span>
                            <p><a href="#">dojosforningas@gmail.com</a></p>
                        </div>
                        <div class="media-29190">
                            <span class="label">Phone</span>
                            <p><a href="#">253-380-1654</a></p>
                        </div>
                        <div class="media-29190">
                            <span class="label">Address</span>
                            <address>175 E Olive Ave 3rd floor<br> Burbank, CA 91502</address>
                        </div>
                        <div class="media-29190">
                            <span class="label">Social</span>
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

            </div>
        </div>

        <div class="untree_co--site-section py-5 bg-body-darker cta">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <h3 class="m-0 p-0">If you have any special requests, please feel free to call us. <a href="tel://+2533801654">253-380-1654</a></h3>
                    </div>
                </div>
            </div>
        </div>

    </main>
    <footer class="untree_co--site-footer">

        <div class="container">
            <div class="row">
                <div class="col-md-4 pr-md-5">
                    <h3>About Us</h3>
                    <p>A hotel is an establishment that provides paid lodging on a short-term basis. Facilities provided may range from a modest-quality.</p>
                    <p><a href="#" class="readmore">Read more</a></p>
                </div>
                <div class="col-md-8 ml-auto">
                    <div class="row">
                        <div class="col-md-3">
                            <h3>Navigation</h3>
                            <ul class="list-unstyled">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Rooms</a></li>
                                <li><a href="#">Amenities</a></li>
                                <li><a href="#">Gallery</a></li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
                        </div>
                        <div class="col-md-9 ml-auto">
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <h3>Address</h3>
                                    <address>273 South Riverview Rd. <br> New York, NY 10011</address>
                                </div>
                                <div class="col-md-6">
                                    <h3>Telephone</h3>
                                    <p>
                                        <a href="#">+1 234 5678 910</a> <br>
                                        <a href="#">+2 234 5678 910</a>
                                    </p>
                                </div>
                            </div>

                            </form>
                        </div>

                    </div>
                </div>
            </div>
            <div class="row mt-5 pt-5 align-items-center">
                <div class="col-md-6 text-md-left">
                    <!-- Link back to Untree.co can't be removed. Template is licensed under CC BY 3.0. If you purchased a license you can remove this. -->
                    <p>
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> Dojos For Ninjas. All Rights Reserved.
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


<script src="../js/vendor/jquery-3.3.1.min.js"></script>
<script src="../js/vendor/popper.min.js"></script>
<script src="../js/vendor/bootstrap.min.js"></script>

<script src="../js/vendor/owl.carousel.min.js"></script>

<script src="../js/vendor/jarallax.min.js"></script>
<script src="../js/vendor/jarallax-element.min.js"></script>
<script src="../js/vendor/ofi.min.js"></script>

<script src="../js/vendor/aos.js"></script>

<script src="../js/vendor/jquery.lettering.js"></script>
<script src="../js/vendor/jquery.sticky.js"></script>

<script src="../js/vendor/jquery.fancybox.min.js"></script>

<script src="../js/vendor/TweenMax.min.js"></script>
<script src="../js/vendor/ScrollMagic.min.js"></script>
<script src="../js/vendor/scrollmagic.animation.gsap.min.js"></script>
<script src="../js/vendor/debug.addIndicators.min.js"></script>


<script src="../js/main.js"></script>
</body>
</html>