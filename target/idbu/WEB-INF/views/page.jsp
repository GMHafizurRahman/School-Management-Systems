<%@page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<%@taglib uri="http://www.springframework.org/tags"  prefix="spring" %>

<spring:url var="css"     value="/css/"/>
<spring:url var="js"      value="/js/"/>
<spring:url var="images"  value="/images/"/>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>

            Welcome EG MART - ${title}</title>
        <script>
            window.menu = '${title}';
            window.contextRoot= '${contextRoot}';
        </script>
        <!-- Bootstrap core CSS -->
        <link href="${css}/bootstrap.css" rel="stylesheet">
        <link href="${css}/bootstrap.min.css" rel="stylesheet">
        <link href="${css}/dataTables.bootstrap.css" rel="stylesheet">
        <link href="${css}/datatables.min.css" rel="stylesheet">
        
     
        <!--<link href="$s{css}/bootstrap-readable-theme.css" rel="stylesheet">-->
        <!-- Custom styles for this template -->
        <link href="${css}/myapp.css" rel="stylesheet">

    </head>

    <body>
              
        <!-- Navigation -->
        <%@include file="./shared/navbar.jsp"  %>
        <!-- Page Content -->
        <c:if test="${userClickHome == true}">
            <%@include file="home.jsp"  %>
            <!--<img src="s$s{images}/PRD3707BEDE5B.jpg"/>-->
        </c:if>

        <%@include file="./shared/navbar.jsp"  %>
        <!-- Page Content -->
        <c:if test="${userClickContact == true}">
            <%@include file="contact.jsp"  %>
        </c:if>

        <%@include file="./shared/navbar.jsp"  %>
        <!-- Page Content -->
        <c:if test="${userClickAbout == true}">
            <%@include file="about.jsp"  %>
        </c:if>

        
        <c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
            <%@include file="listProducts.jsp"  %>
        </c:if>


        <!-- /.container -->

        <!-- Footer -->
        <%@include file="./shared/footer.jsp"  %>

        <!-- Bootstrap core JavaScript -->
        <!--<script src="$a{js}/jquery.min.js"></script>-->
        <script src="${js}/jquery.js"></script>
       
        <script src="${js}/bootstrap.min.js"></script>
        <script src="${js}/dataTables.bootstrap.js"></script>
        <script src="${js}/jquery.dataTables.js"></script>
         
        <script src="${js}/myapp.js"></script>

    </body>

</html>


























