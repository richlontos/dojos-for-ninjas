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
    <link rel="stylesheet" href="/css/postings.css">
    <title>Dojos For Ninjas!</title>
</head>
<body>



<div class="card">
    <div class="initial">
        <div class="header">
            <img src="http://t3n.de/news/wp-content/uploads/2012/10/Xing-Logo-Featured-595x333.jpg" class="logo openlink">
            <img src="https://www.library.manchester.ac.uk/firstimpressions/assets/images/make-your-mark/tools/icons/icon_black_Heart.png" title="favorite" class="favorite">
        </div>
        <hr>
        <p class="desc">Lorem ipsum dolor sit amet, concesctetur adipisicing elit, sed do eiusmod tempor indididunt ut labore et dolore magna alique. Ut enim admit solor text text text texting... <a href="#" class="openlink"> read more</a></p>

        <div class="other-ad">
            <span>Styled ad</span>
            <span>available</span>
        </div>
        <a class="price" id="priceopen">from €495</a>
    </div>
    <div class="hover" id="prices">
        <div class="header">
            <h2>Xing</h2>
            <a id="priceclose">close
                <span></span>
            </a>
        </div>
        <div class="price-toggle">
            <a href="#" id="text1" class="current">text ad</a>
            <a href="#" id="styled1" >styled ad</a>
        </div>
        <div id="prices-wrap" class="prices text-prices">
            <div class="price-item">
                <p>
                    <strong>1 text ad on Xing</strong>
                    <span>30 day posting</span>
                </p>
                <a href="#" class="buy">€495</a>
            </div>
            <hr class="pi1">
            <div class="price-item">
                <p>
                    <strong>5 text ads on Xing</strong>
                    <span>30 day postings</span>
                </p>
                <a href="#" class="buy">€1.295</a>
            </div>
            <hr class="pi1">
            <div class="price-item">
                <p>
                    <strong>10 text ads on Xing</strong>
                    <span>30 day posting</span>
                </p>
                <a href="#" class="buy">€2.695</a>
            </div>
            <div class="price-item2">
                <p>
                    <strong>1 styled ad on Xing</strong>
                    <span>30 day posting</span>
                </p>
                <a href="#" class="buy">€965</a>
            </div>
            <hr class="pi2">
            <div class="price-item2">
                <p>
                    <strong>5 styled ads on Xing</strong>
                    <span>30 day postings</span>
                </p>
                <a href="#" class="buy">€3.954</a>
            </div>
            <hr class="pi2">
            <div class="price-item2">
                <p>
                    <strong>10 styled ads on Xing</strong>
                    <span>30 day posting</span>
                </p>
                <a href="#" class="buy">€6.920</a>
            </div>
            <!--end of styled-prices-->
            <a class="price-link openprice" href="#">all price options</a>
        </div><!--end of prices-->
    </div>
</div><!--end of card-->



<div class="modalshadow"></div>

<div class="modal desc-view">
    <div class="modal-header">
        <img src="http://t3n.de/news/wp-content/uploads/2012/10/Xing-Logo-Featured-595x333.jpg" class="logo">
        <a class="close-modal">X</a>
    </div>
    <ul class="modal-nav">
        <li class="nav-desc active-nav">Description</li>
        <li class="nav-text">Text Ads</li>
        <li class="nav-styled">Styled Ads</li>
        <li class="nav-packages">Packages</li>
    </ul>
    <div class="modal-desc">
        <p class="desc">Lorem ipsum dolor sit amet, concesctetur adipisicing elit, sed do eiusmod tempor indididunt ut labore et dolore magna alique. Ut enim ad minim venaim do eisumod tempor indidudut ut labore et dolore magna alique.</p>
        <p class="desc">Lorem ipsum dolor sit amet, concesctetur adipisicing elit, sed do eiusmod tempor indididunt ut labore et dolore magna alique. Ut enim ad minim venaim do eisumod tempor indidudut ut labore et dolore magna alique.</p>
    </div><!--end of modal-desc-->
    <div class="text-desc">
        <p class="desc">Text ads use only the text blocks and follow the specific styles of the job boards to which they are posted.</p>
        <p class="list-placeholder">a list of text ad packages with price buttons goes here</p>
    </div><!--end of text-desc-->
    <div class="styled-desc">
        <p class="desc">Styled ads allow you to include photos, logos, and custom colors and layouts in your job ad. This is how your ad appears on your own career site.</p>
        <p class="list-placeholder">a list of styled ad packages with price buttons goes here</p>
    </div><!--end of styled-desc-->
    <div class="packages-desc">
        <p class="desc">Packages offer tremendous value. Packages allow you to post a job on multiple boards while saving in the process. Here is a list of packages containing a Xing job posting:</p>
        <p class="list-placeholder">a list of job packages with price buttons goes here</p>
    </div><!--end of packages-desc-->

</div><!--end of modal-->
</body>
</html>