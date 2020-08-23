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
        <link rel="stylesheet" href="${a}/index2_files/css" >
        <link rel="stylesheet" href="${a}/index2_files/animate.css" >
        <link rel="stylesheet" href="${a}/index2_files/bootsnav.css" >
        <link rel="stylesheet" href="${a}/index2_files/navstyle.css" >



    </head>

    <body  oncontextmenu="return false" style="background-color: ">


        <%@include file="shared/navbar.jsp"  %>
        <div class="container-fluid"> 
            <div class="row">
                <%@include file="shared/sidebar.jsp"  %>
                <%@include file="shared/details.jsp"  %>


            </div>
        </div>


        <%@include file="shared/footer.jsp"  %>

        <script>
            var tds = document.getElementById('count_it').getElementsByTagName('td');

            var paid = 0;
            var due = 0;
            for (var i = 0; i < tds.length; i++) {
                if (tds[i].className === 'paid') {
                    paid += isNaN(tds[i].innerHTML) ? 0 : parseInt(tds[i].innerHTML);
                }
            }
            document.getElementById('countit').innerHTML += '<tr>\n\
                     <td></td> <td></td> <td></td> \n\
                     <td class="pro3">Total</td><td>' + paid + '</td></tr>';
        </script>  

    </body>
</html>