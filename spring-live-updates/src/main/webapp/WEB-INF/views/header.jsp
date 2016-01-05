<!doctype html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">   
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<title>Starter Template for Bootstrap</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="libs/bootstrap/dist/css/bootstrap.css" />

<script type="text/javascript" src="libs/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="libs/bootstrap/dist/js/bootstrap.js"></script>  
</head>
 

<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Cotiche & CO</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li><a href="<c:url value='/list'/>">Ideas</a></li>
            <li><a href="<c:url value='/persons_list'/>">Persons</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
</nav>
<br>

