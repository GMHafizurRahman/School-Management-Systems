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


                    Student : ${user.username}
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
                                                <a href="${contextRoot}/s/getmyprofile/${user.id}" class=" wid btn btn-success"> My Profile </a> 
                                            </div>

                                        </td>
                                    </tr>                                            
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="${contextRoot}/s/applicationform/${user.id}"  class=" wid btn btn-success"> Application </a> 
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="${contextRoot}/s/payfeeform/${user.id}" class=" wid btn btn-success"> Pay Fee </a> 
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="${contextRoot}/s/checkduepayment/${user.id}" class=" wid btn btn-success">  Due Payment  </a> 
                                            </div>
                                            <!--<p class="list-group-item-text" style="font-size:11px;">16 Mar 2020 </p>-->                                              
                                            <!--<a href="#">Read more...</a>-->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px"> 
                                                <a href="${contextRoot}/s/getschedule/${user.id}" class=" wid btn btn-success" > Class Schedules  </a> 
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="${contextRoot}/#" class=" wid btn btn-success"> My Result Status </a> 
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="${contextRoot}/#" class=" wid btn btn-success"> Syllabus </a> 
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="list-group-item-heading" style=" padding-bottom: 5px">
                                                <a href="${contextRoot}/#" class=" wid btn btn-success"> Book List</a> 
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




