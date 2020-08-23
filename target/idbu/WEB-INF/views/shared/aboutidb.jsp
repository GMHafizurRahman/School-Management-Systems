<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags"  prefix="spring" %>
<spring:url var="b"        value="/others/"/>  

<div class="container-fluid">
 
    
    
    
    <div class="row">

 
            <div class="col-md-2">
                <div class="panel panel-default">
                    <div style="border-radius: 10px solid #000; background-color:#048277; color: white" class="panel-heading">
                        <center> <span class="glyphicon glyphicon-list-alt"></span> &nbsp; <b> About Us</b> </center>
                    </div>
                    <div class="noitce-panel-body container-fluid">
                        <div class="row">
                            <div class="col-xs-12">
                                <ul class="demo3" style="overflow-y: hidden; height: 548px;">
                                    <li class="news-item">
                                        <table border="0" cellpadding="0">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="list-group-item-heading ">
                                                            <a href="${contextRoot}/home/introduction"> <h4>Introduction </h4> </a> 
                                                        </div>
                                                         <!--<p class="list-group-item-text" style="font-size:11px;">16 Mar 2020 </p>-->                                              
                                                        <!--<a href="#">Read more...</a>-->
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="list-group-item-heading">
                                                        <a href="${contextRoot}/home/whatwedo"> <h4>What We Do</h4> </a> 
                                                       
                                                        </div>
                                                         <!--<p class="list-group-item-text" style="font-size:11px;">16 Mar 2020 </p>-->                                              
                                                        <!--<a href="#">Read more...</a>-->
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="list-group-item-heading"> 
                                                            <a href="${contextRoot}/home/outcome"> <h4>Outcome </h4> </a> 
                                                       
                                                        </div>
                                                         <!--<p class="list-group-item-text" style="font-size:11px;">16 Mar 2020 </p>-->                                              
                                                        <!--<a href="#">Read more...</a>-->
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="list-group-item-heading"> 
                                                            <a href="${contextRoot}/home/evaluation"> <h4>Project Evluation </h4> </a> 
                                                       
                                                        </div>
                                                         <!--<p class="list-group-item-text" style="font-size:11px;">16 Mar 2020 </p>-->                                              
                                                        <!--<a href="#">Read more...</a>-->
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="list-group-item-heading"> 
                                                            <a href="${contextRoot}/home/futureplan"> <h4>Future Plan </h4> </a> 
                                                       
                                                        </div>
                                                         <!--<p class="list-group-item-text" style="font-size:11px;">16 Mar 2020 </p>-->                                              
                                                        <!--<a href="#">Read more...</a>-->
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
    
            <div class="col-md-10">
                <div class="panel panel-default">
                    <div style="border-radius: 10px solid #000; background-color:#048277; color: white" class="panel-heading">
                        <center> 
                            <!--<span class="glyphicon glyphicon-list-alt"></span>-->
                            &nbsp; <b> 
                                
                                                            
                                                                 
                                                          
                                                                 
                                                            
                                                            <c:if test="${userClickIntroduction == true}">
                                                                 INTRODUCTION
                                                            </c:if>
                                                          <c:if test="${userClickWhatWeDo == true}">
                                                              WHAT WE DO 
                                                            </c:if>
                                                          <c:if test="${userClickOutcome == true}">
                                                               OUTCOME
                                                          </c:if>
                                                          <c:if test="${userClickFuturePlan == true}">
                                                               FUTURE PLAN
                                                            </c:if>
                                                          <c:if test="${userClickEvaluation == true}">
                                                             EVALUATION
                                                            </c:if>
                                
                            </b> 
                        </center>
                    </div>
                    <div class="noitce-panel-body">
                        <div class="row">
                            <div class="col-xs-12">
                                <ul class="demo3" style="overflow-y: hidden; height: 548px;">
                                    <li class="news-item">
                                        <table border="0" cellpadding="0">
                                            <tbody>
                                                
                                                <tr>
                                                    <td>
                                                 
                                                        
  
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                            
                                                          <c:if test="${userClickIntroduction == true}">
                                                              <%@ include file="indrouction.jsp"  %>
                                                            </c:if>
                                                          <c:if test="${userClickWhatWeDo == true}">
                                                              <%@include file="whatwedo.jsp"  %>
                                                            </c:if>
                                                          <c:if test="${userClickOutcome == true}">
                                                              <%@include file="outcome.jsp"  %>
                                                            </c:if>
                                                          <c:if test="${userClickEvaluation == true}">
                                                              <%@include file="evaluation.jsp"  %>
                                                            </c:if>
                                                          <c:if test="${userClickFuturePlan == true}">
                                                              <%@include file="futureplan.jsp"  %>
                                                            </c:if> 
                                                              
                                                              
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
                                        <li><a href="home" class="prev"><span class="glyphicon glyphicon-chevron-down">
                                
                                    </span></a></li><li><a href="home" class="next"><span class="glyphicon glyphicon-chevron-up"></span></a></li></ul>
                        <div class="clearfix"></div>
                                        
                    </div>-->
                </div>
            </div> 
    
            </div> 
    
    
    
    
    
    
    
    
    
    
    
    
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</div>