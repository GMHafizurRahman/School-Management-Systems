<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib uri="http://www.springframework.org/tags"  prefix="spring" %> 
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
    .wid{

        width: 150px;
        text-align: left;
    }
</style>

<div class="col-md-2" style="background-color: #555555">
    <div class="panel panel-default" style="background-color: #048277">
        <div style="border-radius: 10px ; background-color:#048277; color: white" class="panel-heading">
            <center> <span class="glyphicon glyphicon-list-alt"></span>
                &nbsp; <b> 


                    ${user.user_role} : ${user.username}
                </b>
            </center>



        </div>
        <div class="noitce-panel-body container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <ul class="demo3" style="overflow-y: hidden; height: auto">
                        <li class="news-item">
                            <table border="0" cellpadding="0">
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading " style="margin-top: 5px; padding-bottom: 5px">
                                                <a  href="${contextRoot}/adm/viewprofile/${user.id}/${user.role_id}" modelAttribute=${user}  class= " wid btn btn-success" > Admin Profile </a> 
                                            </div>

                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style="padding-bottom: 5px">
                                                <a href="${contextRoot}/dispatch/gotoinbox/${user.id}" class=" wid btn btn-success"> Inbox </a> 

                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="${contextRoot}/adm/viewpayments/${user.id}"  class="wid  btn btn-success"> Payments  </a> 

                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="${contextRoot}/adm/gototeachers/${user.id}" class=" wid btn btn-success">Teachers  </a> 

                                            </div>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="${contextRoot}/adm/gotostudents/${user.id}" class=" wid btn btn-success"> Students  </a> 

                                            </div>
                                            <!--<p class="list-group-item-text" style="font-size:11px;">16 Mar 2020 </p>-->                                              
                                            <!--<a href="#">Read more...</a>-->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="${contextRoot}/adm/gotodepartments/${user.id}" class=" wid btn btn-success" > Departments  </a> 

                                            </div>
                                            <!--<p class="list-group-item-text" style="font-size:11px;">16 Mar 2020 </p>-->                                              
                                            <!--<a href="#">Read more...</a>-->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px"> 
                                                <a href="${contextRoot}/adm/gotoschedule/${user.id}" class=" wid btn btn-success" >Class Schedules  </a> 

                                            </div>
                                            <!--<p class="list-group-item-text" style="font-size:11px;">16 Mar 2020 </p>-->                                              
                                            <!--<a href="#">Read more...</a>-->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="#" class=" wid btn btn-success" >  Results  </a> 

                                            </div>
                                            <!--<p class="list-group-item-text" style="font-size:11px;">16 Mar 2020 </p>-->                                              
                                            <!--<a href="#">Read more...</a>-->
                                        </td>
                                    </tr>


                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="${contextRoot}/dispatch/gotonotice/${user.id}" class=" wid btn btn-success"> News & Notices </a> 

                                            </div>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="#" class=" wid btn btn-success"> Syllabus </a> 

                                            </div>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="#" class=" wid btn btn-success"> Book List</a> 

                                            </div>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="${contextRoot}/home" class=" wid btn btn-success">Log Out </a> 

                                            </div>

                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </li>

                    </ul>
                </div>
            </div>
        </div> 


        <!--                    <div class="panel-footer"> 
                                <ul class="pagination pull-right" style="margin: 0px;">
                                    <li><a href="home" class="prev">
                                            <span class="glyphicon glyphicon-chevron-down"></span>
                                        </a></li><li><a href="home" class="next">
                                                <span class="glyphicon glyphicon-chevron-up"></span>
                                            </a></li></ul><div class="clearfix">
                                    
                                            </div>
                                    
                            </div>
        -->

    </div>
</div> 




