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
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/css/roommates.css">
    <title>Dojos For Ninjas!</title>
</head>
<body>
<!-- #Header -->
<header class="panel--reset" role="banner">
    <form role="form">
        <input type="search" placeholder="Search">
    </form>

    <nav role="navigation">
        <ul class="menu__items">
            <li><a href="#">News Feed</a></li>
            <li><a href="/messenger">Messages</a></li>
            <li><a href="#">Nearby</a></li>
            <li><a href="#">Events</a></li>
            <li><a href="#">Friends</a></li>
        </ul>
    </nav>
</header>

<!-- #Panel -->
<div class="panel panel--reset" role="main">

    <b class="menu-trigger">menu</b>

    <div class="utility-nav">

        <div class="utility-nav__items panel--reset">
            <span><a href="#friend-requests">Friend Requests</a></span>
            <span><a href="#messages">Messages</a></span>
            <span><a href="#notifications">Notifications</a></span>
        </div>

        <div class="status-nav panel--reset">
            <span><a href="#status">Status</a></span>
            <span><a href="#photo">Photo</a></span>
            <span><a href="#check-in">Check In</a></span>
        </div>
    </div>

    <div class="fb-users l-users">
        <div class="random-user--wrap panel--reset">
            <img src="" width="50" height="auto" alt="">
            <p class="random-user__name"><span class="fname"></span> <span class="lname"></span></p>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>

            <ul class="share">
                <li><a href="#like">Like</a></li>
                <li><a href="#comment">Comment</a></li>
                <li><a href="#share">Share</a></li>
            </ul>
        </div>

        <div class="random-user--wrap panel--reset">
            <img src="" width="50" height="auto" alt="">
            <p class="random-user__name"><span class="fname"></span> <span class="lname"></span></p>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>

            <ul class="share">
                <li><a href="#like">Like</a></li>
                <li><a href="#comment">Comment</a></li>
                <li><a href="#share">Share</a></li>
            </ul>
        </div>

        <div class="random-user--wrap panel--reset">
            <img src="" width="50" height="auto" alt="">
            <p class="random-user__name"><span class="fname"></span> <span class="lname"></span></p>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>

            <ul class="share">
                <li><a href="#like">Like</a></li>
                <li><a href="#comment">Comment</a></li>
                <li><a href="#share">Share</a></li>
            </ul>
        </div>

        <div class="random-user--wrap panel--reset">
            <img src="" width="50" height="auto" alt="">
            <p class="random-user__name"><span class="fname"></span> <span class="lname"></span></p>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>

            <ul class="share">
                <li><a href="#like">Like</a></li>
                <li><a href="#comment">Comment</a></li>
                <li><a href="#share">Share</a></li>
            </ul>
        </div>

        <div class="random-user--wrap panel--reset">
            <img src="" width="50" height="auto" alt="">
            <p class="random-user__name"><span class="fname"></span> <span class="lname"></span></p>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>

            <ul class="share">
                <li><a href="#like">Like</a></li>
                <li><a href="#comment">Comment</a></li>
                <li><a href="#share">Share</a></li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>