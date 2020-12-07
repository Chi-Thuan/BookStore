<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<%String title = (String)request.getAttribute("titlePage"); %>
<%if(title != null){ %>
	<title><%= title %></title>
	<%} else{%>
	<title>Book Store</title>
<%} %>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">

    <link rel="stylesheet" href="./assets/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/animate.css">
    
    <link rel="stylesheet" href="./assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./assets/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="./assets/css/magnific-popup.css">

    <link rel="stylesheet" href="./assets/css/aos.css">

    <link rel="stylesheet" href="./assets/css/ionicons.min.css">

    <link rel="stylesheet" href="./assets/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="./assets/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="./assets/css/flaticon.css">
    <link rel="stylesheet" href="./assets/css/icomoon.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <script src="https://kit.fontawesome.com/ba60acbd5a.js" crossorigin="anonymous"></script>
</head>