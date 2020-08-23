<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<%@taglib uri="http://www.springframework.org/tags"  prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 



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

        <title> Dhuliapur High School</title>

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

    <body   oncontextmenu="return false" style="background-color: white">


        <c:if test="${userClickLogin == true}">

            <div class="row">

                <div class="col-md-3"> 

                </div>
                <div class="col-md-6 "> 
                    <br/>
                    <br/>
                    <br/>
                    <br><br><br>
                    <div class="bg-success" style="background-color: wheat"> 
                        <!--Login Form Start--> 
                        <br/>
                        <h1 style="padding-left:  30px ; color: black; text-align: center">Dhuliapur High School</h1>
                        <hr/>
                        <c:if test="${message != null}">
                            <br/><br/><br/>
                            <p style="padding-left:  30px; color: red; font-weight: bold; font-size: 20px"> ${message}</p>
                        </c:if>
                        <form:form action="${contextRoot}/home/login" method="post" modelAttribute="user">
                            <table>
                                <tr>
                                    <td>
                                        <h4 style="padding-left:  20px">User's Email Address :</h4>
                                    </td>
                                    <td>
                                        <div style="padding-left:  20px; padding-right: 20px; width: 400px;">
                                            <form:input   class="form-control"  path="email" type="email" placeholder="User's Email Address " required="true" /> 
                                        </div>  
                                    </td>
                                </tr>  
                                <tr>
                                    <td><br></td>
                                    <td><br></td>
                                </tr>
                                <tr>
                                    <td>
                                        <h4 style="padding-left:  20px">User's Password :</h4>
                                    </td>
                                    <td>
                                        <div style="padding-left:  20px; padding-right: 20px; width: 400px;">
                                            <form:input type="password"  class="form-control"  path="password" placeholder="User's Password " required="true" />
                                        </div> 
                                    </td>
                                </tr>
                                <tr>
                                    <td><br></td>
                                    <td><br></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td style="padding-left:  20px; margin-top: 20px"> 
                                        <button type="submit" class="btn btn-default">LogIn</button>
                                    </td>
                                </tr>
                            </table>
                        </form:form> <br/>                        
                        <center>
                            <span style="padding-left:20px"> Don't have an account ? </span>
                            <span><a href="${contextRoot}/home/register" class="btn btn-default"> Register</a></span>
                        </center>
                        <br/> <br/> 
                    </div>
                </div>
                <div class="col-md-3"></div>
            </div>    
        </c:if>  


        <!-- This is for Register   -->
        <c:if test="${userClickRegister == true}">
            <div class="row">
                <div class="col-md-3"> 
                </div>
                <div class="col-md-6 "> 
                    <br/>
                    <br/>
                    <br/>
                    <div class="bg-success" style=" background-color: wheat"> 
                        <!--Login Form Start--> 
                        <br/>

                        <h1 style="padding-left:  30px ; color: black; text-align: center">Dhuliapur High School</h1>
                        <hr/>
                        <br/>
                        <c:if test="${error != null}">
                            <br/>
                            <p style="padding-left:  30px; color: red; font-weight: bold; font-size: 20px"> ${error}</p>

                        </c:if>

                        <form:form action="${contextRoot}/home/register" method="post" modelAttribute="user2">

                            <table>
                                <tr>
                                    <td>
                                        <h4 style="padding-left:  20px">Select One :</h4>
                                    </td>
                                    <td>
                                        <div style="padding-left:  20px; padding-right: 20px ; width: 400px;">
                                            <form:select   class="form-control"  path="user_role" type="role" required="true" > 

                                                <option>Select one</option>
                                                <option value="admin"> Admin</option>
                                                <option value="student">Student</option>
                                                <option value="teacher"> Teacher</option>

                                            </form:select>
                                        </div> 
                                    </td>
                                </tr>
                                <tr> <td><br/></td><td></td> </tr>
                                <tr>
                                    <td>
                                        <h4 class="form-group" style="padding-left:  20px">User's Id :</h4>
                                    </td>
                                    <td>                                  
                                        <div style="padding-left:  20px; padding-right: 20px; width: 400px;">
                                            <form:input class="form-control"  path="role_id" placeholder="Ex: - abcde123" required="true" /> 
                                        </div> 
                                    </td>
                                </tr>
                                <tr> <td><br/></td><td></td> </tr>
                                <tr>
                                    <td>
                                        <h4 style="padding-left:  20px">Email Address :</h4>
                                    </td>
                                    <td>
                                        <div style="padding-left:  20px; padding-right: 20px ; width: 400px;">
                                            <form:input type="email"  class="form-control"  path="email" placeholder="Ex: - abcd@mail.com" required="true" /> 
                                        </div>
                                    </td>
                                </tr>
                                <tr> <td><br/></td><td></td> </tr>
                                <tr>
                                    <td>
                                        <h4 style="padding-left:  20px">Password :</h4>
                                    </td>
                                    <td>
                                        <div style="padding-left:  20px; padding-right: 20px ; width: 400px;">
                                            <form:input type="password"  class="form-control"  path="password" placeholder="Abc@123" required="true" /> 
                                        </div>
                                    </td>
                                </tr>
                                <tr> <td><br/></td><td></td> </tr>
                                <tr>
                                    <td></td>
                                    <td style="padding-left:  20px; margin-top: 20px"> 
                                        <button type="submit" class="btn btn-default">Sign Up</button>
                                    </td>
                                </tr>
                            </table>
                        </form:form> <br/>                        
                        <center>
                            <span style="padding-left:20px">Already  have you an Account ? </span>
                            <span><a href="${contextRoot}/home/gotologin" class="btn btn-default"> LogIn</a></span>
                        </center>
                        <br/>
                    </div>
                </div>
            </div>    

        </c:if> 

        <c:if test="${userRegisterSuccess == true}">
            <br/>
            <p style="padding-left:  30px; color: black; font-weight: bold; font-size: 20px"> ${success}</p>

        </c:if>    




























        <script src="../assets/js/jquery.js"></script>
        <script src="${a}/index2_files/jquery.min.js.download"></script>
        <script src="${a}/index2_files/jquery.mCustomScrollbar.concat.min.js.download"></script>
        <script src="${a}/index2_files/tabs.js.download"></script>
        <script src="${a}/index2_files/jquery.bxslider.min.js.download"></script>
        <!-- Bootstrap JavaScript -->
        <script src="${a}/index2_files/bootstrap.min.js.download" type="text/javascript"></script>
        <!-- carousel.min JavaScript -->
        <script src="${a}/index2_files/owl.carousel.min.js.download" type="text/javascript"></script>
        <script src="${a}/index2_files/jquery.bootstrap.newsbox.min.js.download" type="text/javascript"></script>
        <script src="${a}/index2_files/scroling.js.download"></script>
        <script src="${a}/index2_files/tabs.js.download"></script>
        <script src="${a}/index2_files/bootsnav.js.download"></script>  
        <script src="${a}/index2_files/jquery.dataTables.min.js.download" type="text/javascript"></script>
        <script src="${a}/index2_files/custom.js.download" type="text/javascript"></script>


    </body>
</html>