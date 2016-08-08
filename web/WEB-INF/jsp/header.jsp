


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="SITE_URL" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
    <head>
        <script src="${SITE_URL}/static/js/models/Plant.js" type="text/javascript"></script>
        <script src="${SITE_URL}/static/js/services/PlantService.js" type="text/javascript"></script>
        <script src="http://code.jquery.com/jquery.min.js"></script>
        <script src="${SITE_URL}/static/js/leaflet.js" type="text/javascript"></script>
        <link href="${SITE_URL}/static/css/leaflet.css" rel="stylesheet" type="text/css"/>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="${SITE_URL}/static/js/bootstrap.js" type="text/javascript"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Plant Page</title>
        
<style>
.carousel-inner > .item > img, .carousel-inner > .item > a > img {
    display: block;
    height: auto;
    line-height: 1;
    margin: 0 auto;
    max-width: 100%;
}
  </style>
    </head>
    <body style="background-color: #f3dcef">
    <div class="form-group">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed " data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${SITE_URL}/">Home</a>
                    <a class="navbar-brand" href="${SITE_URL}/admin">User</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active">
                            <a href="${SITE_URL}/about">About</a></li>
                        <li>
                            <a href="${SITE_URL}/plants">Plants</a></li>

                    </ul>
                    
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="${SITE_URL}/services">Services</a>
                        </li>
                         <li>
                            <a href="${SITE_URL}/contact">Contact</a>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

        <div id="myCarousel" class="carousel slide" data-ride="carousel" style="height: 352px;width: 700px;margin-left: 300px;">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="${SITE_URL}/static/images/02.jpg" alt="First Slider" height="200px" width="700px"/>
                    
                </div>

                <div class="item">
                    <img src="${SITE_URL}/static/images/03.jpg" alt="Second Slider" height="200px" width="700px"/>
                </div>

                <div class="item">
                    <img src="${SITE_URL}/static/images/04.jpg" alt="Third Slider" height="200px" width="700px"/>
                </div>

                <div class="item">
                    <img src="${SITE_URL}/static/images/06.jpg" alt="Fourth Slider" height="200px" width="700px"/>
                </div>
            </div>
                
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>