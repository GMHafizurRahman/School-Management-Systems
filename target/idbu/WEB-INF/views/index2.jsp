<%@page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<%@taglib uri="http://www.springframework.org/tags"  prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
  
  
<spring:url var="css"     value="/css/"/>
<spring:url var="js"      value="/js/"/>
<spring:url var="images"  value="/images/"/> 


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel = "icon" type = "image/png" href = "${images}/idb_small.jpg"> 
        <title>

            Welcome to Dhuliapur High School</title>
         <!-- Bootstrap core CSS -->
         <link href="${css}/bootstrap.min.css" rel="stylesheet">
         <link href="${css}/custom.css" rel="stylesheet">
        <script src="${js}/jquery.min.js"></script>

<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
 
    </head>
    <body > 
          <div class="container-fluid">
            <!-- include navbar-->
         <%@include file="./shared/navbar3.jsp"  %>
         <%--<%@include file="./shared/header_name.jsp"  %>--%>
       
           <div class="row">
           <div class="col-lg-1"> </div>
           <div class="col-lg-10">
             <%@include file="./shared/slide.jsp"  %>
             <%@include file="./shared/slide.jsp"  %>
             <%@include file="./shared/slide.jsp"  %>
             <%@include file="./shared/slide.jsp"  %>
             <%--<%@include file="./shared/small_notice.jsp"  %>--%>
            
          </div></div>
        
         <%@include file="./shared/footer.jsp"  %>
           <!-- Bootstrap core JavaScript -->
        <!--<script src="$a{js}/jquery.min.js"></script>-->
        <script src="${js}/jquery.js"></script>
        <script src="${js}/bootstrap.min.js"></script>
    
            
        </div>
        </body>
</html>
