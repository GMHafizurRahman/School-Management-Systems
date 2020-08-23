<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib uri="http://www.springframework.org/tags"  prefix="spring" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
    .pro{
        border: 1px solid black;
        border-collapse: collapse;
        width: 80%;  
        text-align: left; 
        color: black;
    }

    .pro4{
        border: 1px solid black;
        border-collapse: collapse;
        text-align: left;  
        /*padding: 10px;*/  
        padding-left:  10px;  
        font-weight:  bold;
        width: 50%;
        color: black;
    }  



</style>

<div class="col-md-9" style=" padding-top: 5px ; border-color: red;  background-color: white; color: black" >

    <div > 


            <h2 style="text-align: center"><b>Payment Form </b></h2>
            <p style="color: black"> <span style="color: red" >Note : </span> Pay through this BKASH Merchant Number : <b>01717-232 454</b></p>

        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6"> 
                <!--enctype="multipart/form-data"-->
                <form:form action="paymentconfirm"  method="post" modelAttribute="payment"   >
                    

                        <div class=" form-group">Student ID : </div>
                            <div  >
                                <form:input  class="form-control" type="text" path="student_id" placeholder="Student ID" /> </div> 
                        

                        
                        <div class="form-group">Contact Number : </div>
                            <div >
                                <form:input class="form-control"  type="text" path="contact_number" required="true" placeholder="Contact Number"/> 
                            </div> 
                        

                                                        
                                                        
                                                        
                            <div class="form-group">Payment Category </div>
                            <div>
                                                                <form:select  class="form-control" path="payment_category" placeholder="Select">
                                                                    <%--<form:option> </form:option>--%>
                                                                    <option value="Admission Fee"> Admission Fee</option>
                                                                    <option value="Exam Fee"> Exam Fee</option>
                                                                    <option value="Monthly Fee"> Monthly Fee</option>
                                                                    <option value="Semester Fee"> Semester Fee</option>
                                                                    <option value="Tour Fee"> Tour Fee</option>
                                                                    <option value="Development Fee"> Development Fee</option>
                                                                    
                                                                </form:select>
                                                          </div> 


                        <div class=" form-group">Payable  Amount : </div>
                            <div ><form:input class="form-control" path="payable_amount" placeholder="payable_amount"  type="text"  required="true" /> </div> 
                        
                                                                                                                                            
                       

                        <div class=" form-group">Your Paying  Amount : </div>
                            <div  ><form:input class="form-control" path="paying_amount" placeholder="paying_amount" type="text"  required="true" /> </div>
                       

                       
                        <div class=" form-group">BKASH TrxID : </div>
                            <div ><form:input class="form-control"  path="btrx_id" type="text" placeholder="BKASH TrxID" required="true" /> </div> 
                        




                     
                    <br/>
                    <center>
                        <span>
                             <form:button type="submit" class="btn btn-success ">Submit</form:button>
                                                                </span>
                    </center> 
<br/>
                </form:form>

            </div></div>
        <div class="col-md-3"></div>








    </div>
</div>