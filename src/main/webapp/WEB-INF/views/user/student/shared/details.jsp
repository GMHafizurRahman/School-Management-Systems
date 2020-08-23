<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<%@taglib uri="http://www.springframework.org/tags"  prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%--<%@page session="false" %>--%>


<style>



    .pro{
        border: 1px solid black;
        border-collapse: collapse;
        width: 30%;  
        text-align: left; 
        color: black;
    }
    .pro3{
        border: 1px solid black;
        border-collapse: collapse;
        /*width: 30%;*/  
        text-align: center; 
        color: black;
        padding-left:  10px; 
    }
    .pro2{
        border: 1px solid black;
        border-collapse: collapse;
        text-align: left;  
        /*padding: 10px;*/  
        padding-left:  10px;  
        font-weight:  bold;
        width: 50%;
        color: black;
    }  

    .pro4{
        border: 1px solid black;
        border-collapse: collapse;
        text-align: center;  
        /*padding: 10px;*/  
        padding-left:  10px;  
        font-weight:  bold;
        /*width: 50%;*/
        color: black;
    }  



</style>

<div class="col-md-10" style=" padding-top: 5px ; border-color: red; background-color: wheat">
    <span> ${message}</span>
    <div > 

        <c:if test="${userClickGetMyprofile == true}">


            <br/>
            <br/>
            <h2 style="padding-left: 250px"><b>Your  Logging Profile</b></h2>
            <table style="width:80%"> 

                <tr>
                    <td class="pro4">User ID</td><td class="pro4">${user.id}</td>
                </tr>
                <tr>
                    <td class="pro4">User Name </td><td class="pro4">${user.username}</td>
                </tr>
                <tr>
                    <td class="pro4">Email Address</td><td class="pro4">${user.email}</td>
                </tr>
                <tr>
                    <td class="pro4">Password</td><td class="pro4">${user.password}</td>
                </tr>
                <tr>
                    <td class="pro4">Role ID</td><td class="pro4">${user.role_id}</td>
                </tr>
                <tr>
                    <td class="pro4">Role </td><td class="pro4">${user.user_role}</td>
                </tr>
                <tr><td class="pro4"></td>
                    <td class="pro4">    <a href="${contextRoot}/s/gotoupdateuser/${user.id}" class="btn btn-default">Update</a>
                    </td>
                </tr>
            </table>   

            <br/>
            <br/>

            <h2 style="padding-left: 250px"><b>Your  Main Profile</b></h2>
            <table style="width:80%">               
                <tr>
                    <td class="pro4">Student  ID</td><td class="pro4">${stu.id}</td>
                </tr>
                <tr>
                    <td class="pro4">Department  ID</td><td class="pro4">${stu.dept_id}</td>
                </tr>
                <tr>
                    <td class="pro4">Student Name </td><td class="pro4">${stu.name}</td>
                </tr>
                <tr>
                    <td class="pro4">Course Name </td><td class="pro4">${stu.course_name}</td>
                </tr>

                <tr>
                    <td class="pro4">Father's Name</td><td class="pro4">${stu.father_name}</td>
                </tr>
                <tr>
                    <td class="pro4">Mother's Name </td><td class="pro4">${stu.mother_name}</td>
                </tr>
                <tr>
                    <td class="pro4">Email ID</td><td class="pro4">${stu.email}</td>
                </tr>
                <tr>
                    <td class="pro4"> Address</td><td class="pro4">${stu.address}</td>
                </tr>
                <tr>
                    <td class="pro4">Date of Birth </td><td class="pro4">${stu.birth_date}</td>
                </tr>
                <tr>
                    <td class="pro4">Gender </td><td class="pro4">${stu.gender}</td>
                </tr>
                <tr>
                    <td class="pro4">Contact No </td><td class="pro4">${stu.contact_no}</td>
                </tr>
                <tr><td class="pro4"></td>
                    <td class="pro4">    <a href="${contextRoot}/s/gotoupdatestudent/${user.id}" class="btn btn-default">Update</a>
                    </td>
                </tr>
            </table>   





        </c:if>









        <c:if test="${userClickPayFeeForm == true}">


            <h2 style="text-align: center"><b>Payment Form  </b></h2>
            <p style="color: black"> <span style="color: red" >Note : </span> Pay through this BKASH Merchant Number : <b>01717-232 454</b></p>

            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6"> 
                    <!--enctype="multipart/form-data"--> 

                    <form:form action="${contextRoot}/s/paymentconfirm/${user.id}"  method="post" modelAttribute="payment"   >

                        <form:label class=" form-group" path="student_id">Student ID : </form:label>
                            <div>
                            <form:input  class="form-control" readonly="true" value="${user.role_id}"  path="student_id" placeholder="Student ID" required="true" /> 
                        </div> 
                        <br/>

                        <form:label class=" form-group" path="contact_number">Contact &emsp;Number  : </form:label>

                            <div >
                            <form:input class="form-control"   path="contact_number" required="true" placeholder="Contact Number"/> 
                        </div> 
                        <br/>
                        <form:label class=" form-group" path="payment_category">Payment &emsp; Category  : </form:label>

                            <div>
                            <form:select  class="form-control" path="payment_category" placeholder="Select">
                                <option>  </option>
                                <option > Admission Fee</option>
                                <option > Exam Fee</option>
                                <option > Monthly Fee</option>
                                <option > Semester Fee</option>
                                <option > Tour Fee</option>
                                <option > Development Fee</option>
                            </form:select>
                        </div> 
                        <br/>

                        <form:label class=" form-group" path="payable_amount">Payable&emsp; Amount : </form:label>

                            <div >
                            <form:input class="form-control" path="payable_amount" placeholder="Payable    Amount"   required="true" /> 
                        </div> 

                        <br/>

                        <form:label class=" form-group" path="paying_amount">Paying&emsp; Amount : </form:label>

                            <div>
                            <form:input class="form-control" path="paying_amount" placeholder="Paying Amount"   required="true" /> 

                        </div> 
                        <br/>
                        <form:label class=" form-group" path="btrx_id">BKASH Trx ID : </form:label>
                            <div >
                            <form:input class="form-control"  path="btrx_id"  placeholder="BKASH TrxID" required="true" /> </div> 
                        <br/>
                        <center>
                            <span>
                                <form:button type="submit" class="btn btn-default ">Submit</form:button>
                                </span>
                            </center> 
                            <br/>
                    </form:form>

                </div>


                <div class="col-md-3">

                </div>
            </div>
        </c:if>




        <c:if test="${pm_status == true}">

            ${message} 
        </c:if> 

        <c:if test="${userClickApplication == true}">
            <span >
                <a href="${contextRoot}/s/viewapplications/${user.id}" class="btn btn-default"> View Previous Applications  </a>

                <h2 style="text-align: center"><b>Application Form   </b></h2>

                <form:form action="${contextRoot}/s/applicationsubmit/${user.id}"  method="post" modelAttribute="application"   >

                    <form:label class=" form-group" path="student_id">Student ID : </form:label>
                        <div>
                        <form:input  class="form-control"  path="student_id" value="${user.role_id}" readonly="true" placeholder="Student ID" required="true" /> 
                    </div><br/>

                    <form:label class=" form-group" path="subject">Subject : </form:label>
                        <div>
                        <form:input  class="form-control"  path="subject" placeholder="Subject" required="true" /> 
                    </div><br/>
                    <form:label class=" form-group" path="application_body">Application Body : </form:label>
                        <div>
                        <form:textarea style="height: 200px"  class="form-control"  path="application_body" placeholder="Application Body" required="true" /> 
                    </div>
                    <br/>



                    <br/>
                    <center>
                        <span>
                            <form:button type="submit" class="btn btn-default "> Submit Application</form:button>
                            </span>
                        </center> 

                </form:form>
            </c:if>











            <c:if test="${userViewApplications == true}">             
                <br/>     

                <cente>
                    <h4>
                        Your Submitted Applications
                    </h4>
                </cente>      

                <br/>

                <table style="width: 100%">

                    <tr class="pro4">
                        <td class="pro4" style="width: 10%"> Date </td>
                        <td class="pro4" style="width: 10%"> Student ID</td>
                        <td class="pro4" style="width: 20%"> Subject</td>
                        <td class="pro4"                    > Application</td>
                        <td class="pro4" style="width: 10%"> To Do</td>
                    </tr>            
                    <c:forEach var="app" items="${applicationslist}"> 

                        <tr class="pro3">
                            <td class="pro3">${app.a_date}</td>
                            <td class="pro3"> ${app.student_id}</td>
                            <td class="pro3">${app.subject}</td>
                            <td class="pro3" style="text-align: justify">${app.application_body}</td>
                            <td class="pro3"> <a href="${contextRoot}/s/removeapllication/${app.a_id}" class="btn btn-default"> Delete </a>  </td>
                        </tr>

                    </c:forEach>

                </table>        


            </c:if>                


            <c:if test="${application_status == true}">
                ${message}    


            </c:if>


            <c:if test="${userViewDuePayment == true}">

                <span>
                    <a href="${contextRoot}/s/viewpaymenthistory/${user_id}" class="btn btn-default">
                        View Payment History 
                    </a>
                </span> <br/><br/>

                <h2 style="text-align: center"><b>Due Payment History  </b></h2>
                <table style="width: 100%">

                    <tr class="pro4">
                        <td class="pro4" > Date </td>
                        <td class="pro4" > Student ID</td>
                        <td class="pro4" > Category </td>
                        <td class="pro4" > Payable Amount</td>
                        <td class="pro4" > Paid Amount</td>
                        <td class="pro4" > Due Amount</td>
                        <td class="pro4" > To Do</td>
                    </tr>            
                    <c:forEach var="pd" items="${DuePaymentlist}"> 

                        <tr class="pro3">
                            <td class="pro3">${pd.p_date}</td>
                            <td class="pro3"> ${pd.student_id}</td>
                            <td class="pro3"> ${pd.payment_category}</td>
                            <td class="pro3" >${pd.payable_amount}</td>
                            <td class="pro3" >${pd.paying_amount}</td>
                            <td class="pro3" >${pd.due_amount}</td>
                            <td class="pro3" style="padding: 7px" >
                                <a href="${contextRoot}/s/duepaymentform/${user.id}/${pd.serial_id}" class="btn btn-default" >  Pay Due Payment</a>
                            </td>
                        </tr>

                    </c:forEach>

                </table>        

            </c:if> 






            <c:if test="${userClickPaymentHitsory == true}">

                <h2 style="text-align: center"><b> Student Payment History  </b></h2>

                <table style="width: 100%">

                    <tr class="pro4">
                        <td class="pro4" > Date          </td>
                        <td class="pro4" > Student ID    </td>
                        <td class="pro4" > BKASH Trx ID  </td>
                        <td class="pro4" > Category      </td>
                        <td class="pro4" > Payable Amount</td>
                        <td class="pro4" > Paid Amount   </td>
                        <td class="pro4" > Due Amount    </td>

                    </tr>            
                    <c:forEach var="pd" items="${PaymentHistoryList}"> 

                        <tr class="pro3">
                            <td class="pro3" >${pd.p_date}</td>
                            <td class="pro3" >${pd.student_id}</td>
                            <td class="pro3" >${pd.btrx_id}</td>
                            <td class="pro3" >${pd.payment_category}</td>
                            <td class="pro3" >${pd.payable_amount}</td>
                            <td class="pro3" >${pd.paying_amount}</td>
                            <td class="pro3" >${pd.due_amount}</td>

                        </tr>

                    </c:forEach>

                </table>   

            </c:if>







            <c:if test="${userWantsToPayDue == true}">

                <h2 style="text-align: center"><b> Due Payment  Form  </b></h2>
                <p style="color: black"> <span style="color: red" >Note : </span> Pay through this BKASH Merchant Number : <b>01717-232 454</b></p>

                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6"> 
                        <!--enctype="multipart/form-data"--> 

                        <form:form action="${contextRoot}/s/updateduepayment/${user.id}"  method="post" modelAttribute="payment"   >

                            <c:forEach var="ph" items="${PaymentDueHistory}">  

                                <div>
                                    <form:input  class="form-control"  path="payable_amount" value="${ph.payable_amount}"  type="hidden" /> 
                                    <form:input  class="form-control"  path="serial_id" value="${ph.serial_id}"  type="hidden" /> 
                                </div>    

                                <form:label class=" form-group" path="student_id">Student ID : </form:label>
                                    <div>
                                    <form:input  class="form-control"  path="student_id" value="${ph.student_id}" placeholder="Student ID" readonly="true" /> 
                                </div> 
                                <br/>



                                <form:label class=" form-group" path="contact_number">Contact Number  : </form:label>

                                    <div >
                                    <form:input class="form-control"   path="contact_number" required="true"  value="${ph.contact_number}"    placeholder="Contact Number"  /> 
                                </div> 
                                <br/>





                                <form:label class=" form-group" path="payment_category">Payment_Category  : </form:label>

                                    <div>
                                    <form:input  class="form-control" path="payment_category" value="${ph.payment_category}" placeholder="Payment Category" readonly="true" />

                                </div> 
                                <br/>

                                <form:label class=" form-group" path="due_amount">Due Amount : </form:label>

                                    <div >
                                    <form:input class="form-control" path="due_amount" value="${ph.due_amount}" placeholder="Due Amount"   required="true" readonly="true" /> 
                                </div> 

                                <br/>
                            </c:forEach>





                            <form:label class=" form-group" path="paying_amount">Paying Amount : </form:label>

                                <div>
                                <form:input class="form-control" path="paying_amount" placeholder="Paying Amount"   required="true" /> 

                            </div> 
                            <br/>
                            <form:label class=" form-group" path="btrx_id">BKASH Trx ID : </form:label>
                                <div >
                                <form:input class="form-control"  path="btrx_id"  placeholder="BKASH TrxID" required="true" /> </div> 
                            <br/> 
                            <center>
                                <span>
                                    <form:button type="submit" class="btn btn-default ">Submit</form:button>
                                    </span>
                                </center> 
                                <br/> 
                        </form:form>

                    </div>


                    <div class="col-md-3">

                    </div>
                </div>


            </c:if>
            <c:if test="${updateduepayment == true}">

                ${message}

            </c:if>


            <!--########################################################################-->

            <c:if test="${gotoUpdateStudent == true }">

                <h2 style="text-align: center"><b> Student Information Update Form   </b></h2>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6"> 
                        <!--enctype="multipart/form-data"--> 

                        <form:form action="${contextRoot}/s/updatestudent/${user.id}"  method="post" modelAttribute="student"   >

                            <form:label class=" form-group" path="id">Student ID : </form:label>
                                <div>
                                <form:input  class="form-control" value="${stu.id}" readonly="true" path="id" placeholder="Student ID" required="true" /> 
                            </div> 


                            <form:label class=" form-group" path="dept_id">Department ID : </form:label>

                                <div >
                                <form:input class="form-control"   path="dept_id" readonly="true" value="${stu.dept_id}" required="true" placeholder="Department ID "/> 
                            </div> 

                            <form:label class=" form-group" path="name">Student  Name : </form:label>

                                <div>
                                <form:input  class="form-control" value="${stu.name}" path="name" placeholder="Student Name" required="true" />

                            </div> 


                            <form:label class="form-group" path="father_name">Father's Name : </form:label>

                                <div >
                                <form:input class="form-control" path="father_name" value="${stu.father_name}" placeholder="Father's Name"   required="true" /> 
                            </div> 
                            <form:label class="form-group" path="mother_name">Mother's Name : </form:label>

                                <div >
                                <form:input class="form-control" path="mother_name" value="${stu.mother_name}" placeholder="Mother's Name"   required="true" /> 
                            </div> 


                            <form:label class="form-group" path="address">Address : </form:label>
                            <div><span class="pro4">${stu.address}</span></div>
                            <div >
                                <form:textarea class="form-control" path="address" value="${stu.address}" placeholder="Address"   required="true" /> 
                            </div> 

                            <form:label class="form-group" path="gender">Gender : : ${stu.gender}</form:label>

                                <div >
                                <form:radiobutton class="form" path="gender" value="Male" placeholder="eMale"   required="true" /> Male &emsp;
                                <form:radiobutton class="form" path="gender" value="Female" placeholder="Female"   required="true" /> Female
                            </div> 

                            <form:label class="form-group" path="email">Email Address : </form:label>

                                <div >
                                <form:input class="form-control" path="email" value="${stu.email}" placeholder="Email Address"   required="true" /> 
                            </div> 
                            <form:label class="form-group" path="contact_no">Contact Number : </form:label>

                                <div >
                                <form:input style="width: 100%" class="form-" type="number"  path="contact_no" value="${stu.contact_no}" placeholder="Contact Number"   required="true" /> 
                            </div> 

                            <form:label class="form-group" path="birth_date"> Date of Birth : :  ${stu.birth_date} </form:label>

                                <div >
                                <form:input class="form-control" path="birth_date" value="${stu.birth_date}" placeholder="Date of Birth" type="date"  required="true" /> 
                            </div>

                            <br/>


                            <center>
                                <span>
                                    <form:button type="submit" class="btn btn-default ">Submit</form:button>
                                    </span>
                                </center> 

                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                        </form:form>

                    </div>


                    <div class="col-md-3">

                    </div>
                </div>            

            </c:if>
            <c:if test="${gotoUpdateUser == true}">


                <h2 style="text-align: center"><b> User Information Update Form  </b></h2>

                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6"> 
                        <!--enctype="multipart/form-data"--> 

                        <form:form action="${contextRoot}/s/updateuser/${user.id}"  method="post" modelAttribute="user"   >

                            <form:label class=" form-group" path="id">User ID : </form:label>
                                <div>
                                <form:input  class="form-control" value="${user.id}" readonly="true" path="id" placeholder="Student ID" required="true" /> 
                            </div> 

                            <form:label class=" form-group" path="username">Name : </form:label>
                                <div>
                                <form:input  class="form-control" value="${user.username}"  path="username" placeholder="Student ID" required="true" /> 
                            </div> 

                            <form:label class=" form-group" path="email">Email Address</form:label>
                                <div>
                                <form:input  class="form-control" value="${user.email}"  path="email" placeholder="Student ID" required="true" /> 
                            </div> 
                            <form:label class=" form-group" path="password">Password</form:label>
                                <div>
                                <form:input  class="form-control" value="${user.password}"  path="password" placeholder="Student ID" required="true" /> 
                            </div> 

                            <form:label class=" form-group" path="role_id">Role ID: </form:label>
                                <div>
                                <form:input  class="form-control" value="${user.role_id}" readonly="true" path="role_id" placeholder="Student ID" required="true" /> 
                            </div> 

                            <form:label class=" form-group" path="user_role">User Role : </form:label>
                                <div>
                                <form:input  class="form-control" value="${user.user_role}" readonly="true" path="user_role" required="true" /> 
                            </div> 



                            <br/>
                            <br/>
                            <center>
                                <span>
                                    <form:button type="submit" class="btn btn-default ">Submit</form:button>
                                    </span>
                                </center> 

                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                                <br/>
                        </form:form>

                    </div>


                    <div class="col-md-3">

                    </div>
                </div>  


            </c:if>
            <c:if test="${ScheduleOfClass == true}">


                <h2 style="text-align: center"><b>My Class Schedule   </b></h2>

                <table style="width: 100%">

                    <tr class="pro4">
                        <td class="pro4" > Department ID          </td>
                        <td class="pro4" > Course ID    </td>
                        <td class="pro4" > Course Title  </td>
                        <td class="pro4" > Room No      </td>
                        <td class="pro4" > Teacher Name</td>
                        <td class="pro4" > Class Time   </td>
                        <td class="pro4" > Days    </td>

                    </tr>     

                    <c:forEach var="sc" items="${sclist}"> 

                        <tr class="pro3">
                            <td class="pro3" >${sc.dept_id}</td>
                            <td class="pro3" >${sc.course_id}</td>
                            <td class="pro3" >${sc.course_title}</td>
                            <td class="pro3" >${sc.room_no}</td>
                            <td class="pro3" >${sc.teacher}</td>
                            <td class="pro3" >${sc.class_schedule}</td>
                            <td class="pro3" >${sc.days}</td>

                        </tr>

                    </c:forEach>

                </table>  
            </c:if>

    </div>
</div>
</div>