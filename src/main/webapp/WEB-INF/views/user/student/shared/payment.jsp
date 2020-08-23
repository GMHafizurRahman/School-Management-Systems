

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<%@taglib uri="http://www.springframework.org/tags"  prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<spring:url var="a"        value="/assets/"/>   
<spring:url var="css"     value="/css/"/>
<spring:url var="js"      value="/js/"/>
<spring:url var="images"  value="/images/"/> 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <title>Dhuliapur High School</title>

        <link rel="stylesheet" href="${a}/index2_files/jquery.dataTables.min.css">
        <link rel="stylesheet" href="${a}/index2_files/bootstrap.min.css">
        <link rel="stylesheet" href="${a}/index2_files/style.css">
        <link rel="stylesheet" href="${a}/index2_files/tabs.css">
        <link rel="stylesheet" href="${a}/index2_files/style3.css">
        <link rel="stylesheet" href="${a}/index2_files/owl.carousel.css">
        <link rel="stylesheet" href="${a}/index2_files/owl.theme.css">
        <link rel="stylesheet" href="${a}/index2_files/font-awesome.min.css">
        <link rel="stylesheet" href="${a}/index2_files/style(1).css">
        <link rel="stylesheet" href="${a}/index2_files/jquery.mCustomScrollbar.css">
        <link rel="stylesheet" href="${a}/index2_files/jquery.bxslider.min.css">
        <link rel="stylesheet" href="${a}/index2_files/jquery.dataTables.min.css">
        <link href="${a}/index2_files/css" rel="stylesheet">
        <link href="${a}/index2_files/animate.css" rel="stylesheet">
        <link href="${a}/index2_files/bootsnav.css" rel="stylesheet">
        <link href="${a}/index2_files/navstyle.css" rel="stylesheet">

        <!--<link rel="stylesheet" href="$s{css}/bootstrap.min.css">-->
    </head>

    <body   style="background-color:white ">
        <%@include file="navbar.jsp"  %>
        <div class="container-fluid">
            <div class="row">
                <%@include file="sidebar.jsp"  %>
                <%@include file="details2.jsp"  %>
            </div>
        </div>
        <%@include file="footer.jsp"  %>
    </body>
</html>