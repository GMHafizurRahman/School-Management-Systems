<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<%@taglib uri="http://www.springframework.org/tags"  prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
        padding-left:  5px; 
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

    .pro5{
        border: 1px solid black;
        border-collapse: collapse;
        text-align: left;  
        /*padding: 10px;*/  
        padding-left:  5px;  
        font-weight:  bold;
        /*width: 50%;*/
        color: black;
    }
    .pro6{
        border: 1px solid black;
        border-collapse: collapse;
        text-align: center;  
        /*padding: 10px;*/  
        padding-left:  5px;  
        font-weight:  bold;
        /*width: 50%;*/
        color: black;
    }

</style>



<c:if test="${userClickAdminProfile == true }">
    <br/>

    &emsp; <a href="${contextRoot}/adm/viewalladmin/${user.id}" class="btn btn-default">View All Admins   </a>
    &emsp; <a href="${contextRoot}/adm/viewallusers/${user.id}" class="btn btn-default">View All Users   </a>
    &emsp; <a href="${contextRoot}/adm/gotoaddadmin/${user.id}" class="btn btn-default">Add  Admin   </a>

    <br/>
    <br/>
    <table style="width:80%">        
        <h2 style="text-align: center"><b>Your User Logging Profile</b></h2>
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
            <td class="pro4">    <a href="${contextRoot}/adm/gotoupdateuser/${user.id}" class="btn btn-default">Update</a>
            </td>
        </tr>
    </table>   


    <br/>
    <br/>
    <table style="width:80%;"> 
        <h2 style="text-align: center"><b>Your Main  Profile</b></h2>
        <tr>
            <td class="pro4">Role ID</td><td class="pro4">${admp.id}</td>
        </tr>
        <tr>
            <td class="pro4"> Name </td><td class="pro4">${admp.name}</td>
        </tr>
        <tr>
            <td class="pro4">Father Name </td><td class="pro4">${admp.father_name}</td>
        </tr>
        <tr>
            <td class="pro4">Mother Name </td><td class="pro4">${admp.mother_name}</td>
        </tr>
        <tr>
            <td class="pro4">Date of Birth </td><td class="pro4">${admp.birth_date}</td>
        </tr>
        <tr>
            <td class="pro4">Age </td><td class="pro4">${admp.age}</td>
        </tr>
        <tr>
            <td class="pro4">Email Address</td><td class="pro4">${admp.email}</td>
        </tr>
        <tr>
            <td class="pro4">Gender</td><td class="pro4">${admp.gender}</td>
        </tr>
        <tr>
            <td class="pro4">Address</td><td class="pro4">${admp.address}</td>
        </tr>
        <tr>
            <td class="pro4">Contact No : </td><td class="pro4">${admp.contact_no}</td>
        </tr>
        <tr><td class="pro4"></td>
            <td class="pro4">    <a href="${contextRoot}/adm/gotoupdateadmin/${user.id}" class="btn btn-default">Update</a>
            </td>
        </tr>
    </table>    


</c:if>

<c:if test="${gotoupdateuser == true}">
    <form:form action="${contextRoot}/adm/updateuser"  method="post" modelAttribute="users" >

        <h2 style="text-align: center"><b>User Information Update Form </b></h2>
        <table style="width:80%">

            <tr><td class="pro4">Attribute</td> <td class="pro4">
                    Value</td>
            </tr> 
            <tr><td class="pro4">User ID</td> <td class="pro4">
                    <form:input path="id"  value="${user.id}" readonly="true" /></td>
            </tr> 
            <tr><td class="pro4">User Name</td> <td class="pro4">
                    <form:input path="username"  value="${user.username}" /></td>
            </tr> 
            <tr><td class="pro4">User Password</td> <td class="pro4">
                    <form:input path="password"  value="${user.password}" /></td>
            </tr> 
            <tr><td class="pro4">User Email </td> <td class="pro4">
                    <form:input path="email"  value="${user.email}" /></td>
            </tr> 
            <tr><td class="pro4">User Role</td> <td class="pro4">
                    <form:input path="user_role"  value="${user.user_role}" readonly="true" /></td>
            </tr> 
            <tr><td class="pro4">User Role ID</td> <td class="pro4">
                    <form:input path="role_id"  value="${user.role_id}" readonly="true" /></td>
            </tr> 

        </table>
        <br/>
        <br/>
        <center><button class="btn btn-default">Update</button></center>
        </form:form>
    </c:if>


<c:if test="${gotoupdateadmin == true}">
    <form:form action="${contextRoot}/adm/updateadmin/${user.id}"  method="post" modelAttribute="admin" >

        <br/>
        <br/>
        <br/>

        <h2 style="text-align: center"><b>Admin Information Update Form </b></h2>
        <table style="width:80%">

            <tr><td class="pro4">Attribute</td> <td class="pro4">
                    Value</td>
            </tr> 
            <tr><td class="pro4">Role ID</td> <td class="pro4">
                    <form:input path="id"  value="${admp.id}" readonly="true" /></td>
            </tr> 
            <tr><td class="pro4"> Name</td> <td class="pro4">
                    <form:input path="name"  value="${admp.name}" required="true"  /></td>
            </tr> 

            <tr><td class="pro4">Email ID</td> <td class="pro4">
                    <form:input path="email"  value="${admp.email}" required="true"  />
                </td>
            </tr> 
            <tr><td class="pro4">Age </td> <td class="pro4">
                    <form:input path="age"  value="${admp.age}" required="true"  /></td>
            </tr> 
            <tr><td class="pro4">Gender</td> <td class="pro4">
                    <span class="pro4"> ${admp.gender}</span> &nbsp; 
                    <form:radiobutton path="gender"  value="Male" required="true"/>Male  &nbsp;
                    <form:radiobutton path="gender"  value="Female" required="true"/>Female &nbsp;</td>
            </tr> 
            <tr><td class="pro4">Address</td> <td class="pro4"><span class="pro4">${admp.address}</span> &emsp;

                    <form:textarea class="" path="address"  value="${admp.address}" required="true"   ></form:textarea></td>
                </tr> 
                <tr><td class="pro4">Father Name</td> <td class="pro4">
                    <form:input path="father_name"  value="${admp.father_name}" required="true"   /></td>
            </tr> 
            <tr><td class="pro4">Mother Name</td> <td class="pro4">
                    <form:input path="mother_name"  value="${admp.mother_name}" required="true"  /></td>
            </tr> 
            <tr><td class="pro4">Date Of Birth</td> <td class="pro4">
                    <form:input path="birth_date" type="date"  value="${admp.birth_date}" required="true"  /></td>
            </tr> 
            <tr><td class="pro4">Contact No</td> <td class="pro4">
                    <form:input  path="contact_no"  value="${admp.contact_no}" required="true"  /></td>
            </tr> 

        </table>
        <br/>
        <br/>
        <center><button class="btn btn-default">Update</button></center>
        </form:form>
    </c:if> 


<c:if test="${ viewAllUsers == true}">
    <br/>

    &emsp; <a href="${contextRoot}/adm/viewalladmin/${user.id}" class="btn btn-default">View All Admins   </a>
    &emsp; <a href="${contextRoot}/adm/viewallusers/${user.id}" class="btn btn-default">View All Users   </a>
    &emsp; <a href="${contextRoot}/adm/gotoaddadmin/${user.id}" class="btn btn-default">Add  Admin   </a>

    <br/>
    <br/>
    <br/>
    <table style="width: 80%">
        <tr class=""> 
            <td class="pro5">ID</td>  
            <td class="pro5">User Name</td>  
            <td class="pro5">Email Address</td>  
            <td class="pro5">User Role</td>  
            <td class="pro5">Role ID</td>  
            <td class="pro5">Action</td>  


        </tr>
        <c:forEach var="ulist" items="${uList}">
            <tr class="">
                <td class="pro5">${ulist.id}</td>
                <td class="pro5">${ulist.username}</td>
                <td class="pro5">${ulist.email}</td>
                <td class="pro5">${ulist.user_role}</td>
                <td class="pro5">${ulist.role_id}</td>

                <td class="pro5">

                    <a href="${contextRoot}/adm/deleteuser/${user.id}/${ulist.id}" class="btn btn-warning" style="font-weight: bold; color: black">Delete</a>
                </td>


            </tr>  

        </c:forEach>
    </table>            
</c:if>            

<c:if test="${viewAllAdmin == true}">
    <br/>


    &emsp; <a href="${contextRoot}/adm/viewalladmin/${user.id}" class="btn btn-default">View All Admins   </a>
    &emsp; <a href="${contextRoot}/adm/viewallusers/${user.id}" class="btn btn-default">View All Users   </a>
    &emsp; <a href="${contextRoot}/adm/gotoaddadmin/${user.id}" class="btn btn-default">Add  Admin   </a>

    <br/>
    <br/>
    <br/>
    <table style="width: 80%">
        <tr class=""> 
            <td class="pro5">ID</td>  
            <td class="pro5">Name</td>  
            <td class="pro5">Email</td>  
            <td class="pro5">Age</td>  
            <td class="pro5">Gender</td>  
            <td class="pro5">Address</td>  
            <td class="pro5">Father Name</td>  
            <td class="pro5">Mother Name</td>  
            <td class="pro5">Date of Birth</td>  
            <td class="pro5">Contact No</td>  
            <td class="pro5">Action</td>  

        </tr>
        <c:forEach var="adl" items="${aList}">
            <tr class="">
                <td class="pro5">${adl.id}</td>
                <td class="pro5">${adl.name}</td>
                <td class="pro5">${adl.email}</td>
                <td class="pro5">${adl.age}</td>
                <td class="pro5">${adl.gender}</td>
                <td class="pro5">${adl.address}</td>
                <td class="pro5">${adl.father_name}</td>
                <td class="pro5">${adl.mother_name}</td>
                <td class="pro5">${adl.birth_date}</td>
                <td class="pro5">${adl.contact_no}</td>
                <td class="pro5">
                    <a href="${contextRoot}/adm/gotoupdateadmin/${user.id}/${adl.id}" class="btn btn-warning" style="font-weight: bold; color: black">Update </a>
                    <a href="${contextRoot}/adm/deleteadmin/${user.id}/${adl.id}" class="btn btn-warning" style="font-weight: bold; color: black">Delete</a>
                </td>


            </tr>  

        </c:forEach>
    </table>

</c:if>    











<c:if test="${gotoAddAdmin == true}">
    <br/>

    &emsp; <a href="${contextRoot}/adm/viewalladmin/${user.id}" class="btn btn-default">View All Admins   </a>
    &emsp; <a href="${contextRoot}/adm/viewallusers/${user.id}" class="btn btn-default">View All Users   </a>
    &emsp; <a href="${contextRoot}/adm/gotoaddadmin/${user.id}" class="btn btn-default">Add  Admin   </a>



    <br/> 
    <br/> 
    &emsp;&emsp;   &emsp;&emsp;     &emsp;&emsp;       &emsp;&emsp;
    &emsp;&emsp;   &emsp;&emsp;     &emsp;&emsp;       &emsp;&emsp;
    &emsp;&emsp;   &emsp;&emsp;            &emsp;&emsp;
    <span class="btn btn-default"> Admin Add Form 
    </span>  <br/>
    <p style="color: black"> <span style="color: red" >Note : </span> </p>

    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/adm/addadmin/${user.id}"  method="post" modelAttribute="admin"   >

                <table>
                    <tr>
                        <td><form:label class=" form-group" path="name">Name  :</form:label></td>
                            <td>
                            <form:input  class="form-control"  size="60px"  path="name" placeholder="Name" required="true" /> 
                        </td>
                    </tr>
                    <tr>
                        <td><br></td>
                    </tr>
                    <tr>
                        <td>
                            <form:label class=" form-group" path="email">Email Address  : </form:label>    
                            </td>
                            <td>
                            <form:input class="form-control" size="60px"  path="email" type="email" required="true" placeholder="Email Address"/>
                        </td>
                    </tr>
                    <tr> <td><br></td></tr>
                    <tr>
                        <td>
                            <form:label class=" form-group" path="age">Age : </form:label>  
                            </td>
                            <td>
                            <form:input class="form-control" size="60px" path="age" placeholder="Age"   required="true" /> 
                        </td>
                    </tr>
                    <tr> <td><br></td></tr>
                    <tr>
                        <td>
                            <form:label class=" form-group" path="gender">Gender : </form:label>  
                            </td>
                            <td>
                            <form:radiobutton class="" path="gender" value="Male"   required="true" /> Male &emsp; 
                            <form:radiobutton class="" path="gender" value="Female"  required="true" /> Female &emsp;
                        </td>
                    </tr>
                    <tr> <td><br></td></tr>
                    <tr>
                        <td>
                            <form:label class=" form-group" path="address">Address  :</form:label> 
                            </td>
                            <td>
                            <form:textarea class="form-control"  size="60px"  path="address"   placeholder="Address" required="true" />
                        </td>
                    </tr>
                    <tr> <td><br></td></tr>
                    <tr>
                        <td>
                            <form:label class=" form-group" path="father_name">Father's Name : </form:label>
                            </td>
                            <td>
                            <form:input class="form-control" size="60px"   path="father_name"  placeholder="Father's Name" required="true" />
                        </td>
                    </tr>

                    <tr> <td><br></td></tr>
                    <tr>
                        <td>
                            <form:label class=" form-group" path="mother_name">Mother's Name :</form:label>
                            </td>
                            <td>
                            <form:input class="form-control" size="60px"  path="mother_name"  placeholder="Mother's Name" required="true" />
                        </td>
                    </tr>
                    <tr> <td><br></td></tr>
                    <tr>
                        <td>
                            <form:label class=" form-group" path="birth_date">Date of Birth :</form:label>
                            </td>
                            <td>
                            <form:input class="form-control"  path="birth_date"  placeholder="Date of Birth" type="date" required="true" />
                        </td>
                    </tr>
                    <tr> <td><br></td></tr>
                    <tr>
                        <td>
                            <form:label class=" form-group" path="contact_no">Contact Number :</form:label>
                            </td>
                            <td>
                            <form:input class="form-control"  path="contact_no"  placeholder="Contact Number" type="contact" required="true" />
                        </td>
                    </tr>
                    <tr> <td><br></td></tr>
                    <tr>
                        <td>                          
                        </td>
                        <td>
                            <form:button type="submit" class="btn btn-default ">Submit</form:button>
                            </td>
                        </tr>
                    </table>
            </form:form>

        </div>


        <div class="col-md-3">

        </div>
    </div>
</c:if>    

<c:if test="${AddAdminSuccess==true}">
    <br/>

    &emsp; <a href="${contextRoot}/adm/viewalladmin/${user.id}" class="btn btn-default">View All Admins   </a>
    &emsp; <a href="${contextRoot}/adm/viewallusers/${user.id}" class="btn btn-default">View All Users   </a>
    &emsp; <a href="${contextRoot}/adm/gotoaddadmin/${user.id}" class="btn btn-default">Add  Admin   </a>



    <br/> 





    <h2>${message}</h2> <br/>
    <p>
        ${status}
    </p>


</c:if>


<c:if test="${adminUpdateForm == true}">
    <br/>

    &emsp; <a href="${contextRoot}/adm/viewalladmin/${user.id}" class="btn btn-default">View All Admins   </a>
    &emsp; <a href="${contextRoot}/adm/viewallusers/${user.id}" class="btn btn-default">View All Users   </a>
    &emsp; <a href="${contextRoot}/adm/gotoaddadmin/${user.id}" class="btn btn-default">Add  Admin   </a>



    <br/> 
    <br/> 
    &emsp;&emsp;   &emsp;&emsp;     &emsp;&emsp;       &emsp;&emsp;
    &emsp;&emsp;   &emsp;&emsp;     &emsp;&emsp;       &emsp;&emsp;
    &emsp;&emsp;   &emsp;&emsp;            &emsp;&emsp;
    <span class="btn btn-default"> Admin Information Update Form 
    </span>  <br/>
    <p style="color: black"> <span style="color: red" >Note : </span> </p>

    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/adm/updateAlladmin/${user.id}"  method="post" modelAttribute="admin"   >


                <form:label class=" form-group" path="id">ID : </form:label>
                    <div>
                    <form:input  class="form-control"  path="id" value="${uadm.id}" placeholder="ID" required="true" readonly="true" /> 
                </div> 
                <br/>
                <form:label class=" form-group" path="name">Name </form:label>
                    <div>
                    <form:input  class="form-control"  path="name" value="${uadm.name}" placeholder="Name" required="true" /> 
                </div> 
                <br/>

                <form:label class=" form-group" path="email">Email Address  : </form:label>

                    <div >
                    <form:input class="form-control"   path="email" value="${uadm.email}" type="email" required="true" placeholder="Email Address"/> 
                </div> 

                <br/>

                <form:label class=" form-group" path="age">Age : </form:label>

                    <div >
                    <form:input class="form-control" path="age" value="${uadm.age}" placeholder="Age"   required="true" /> 
                </div> 

                <br/>
                <form:label class=" form-group" path="gender">Gender : &emsp;&emsp;<span class="pro4">${uadm.gender}</span> </form:label>

                    <div>
                    <form:radiobutton class="" path="gender" value="Male"   required="true" /> Male &emsp; 
                    <form:radiobutton class="" path="gender" value="Female"  required="true" /> Female &emsp;

                </div> 
                <br/>
                <form:label class=" form-group" path="address">Address  : <br/> ${uadm.address}</form:label>
                    <div >
                    <form:textarea class="form-control"  path="address" value="${uadm.address}" placeholder="Address" required="true" />
                </div> 
                <br/>

                <form:label class=" form-group" path="father_name">Father's Name : </form:label>
                    <div >
                    <form:input class="form-control"  path="father_name" value="${uadm.father_name}" placeholder="Father's Name" required="true" />
                </div> 
                <br/>
                <form:label class=" form-group" path="mother_name">Mother's Name :</form:label>
                    <div >
                    <form:input class="form-control"  path="mother_name" value="${uadm.mother_name}"  placeholder="Mother's Name" required="true" />
                </div> 
                <br/>

                <form:label class=" form-group" path="birth_date">Date of Birth :</form:label>
                    <div >
                    <form:input class="form-control"  path="birth_date" value="${uadm.birth_date}"  placeholder="Date of Birth" type="date" required="true" />
                </div> 
                <br/>

                <form:label class=" form-group" path="contact_no">Contact Number :</form:label>
                    <div >
                    <form:input class="form-control"  path="contact_no" value="${uadm.contact_no}" placeholder="Contact Number" type="contact" required="true" />
                </div> 
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
<c:if test="${Adminviewspayments==true}">
    <br/>

    <form:form action="${contextRoot}/adm/findstudentdueamount/${user.id}" method="post" modelAttribute="dp">
        <span class="btn btn-default"> Receive Due Payment</span> 
        <form:input  path="student_id" placeholder="Type Student ID" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
        <a href="${contextRoot}/adm/receiveapayment/${user.id}" class="btn btn-default"> Receive A Payment</a>
    </form:form>

    <h2 style="text-align: center"><b>Payment History  Table </b></h2>

    <table id="count_it" style="width: 80%">

        <tr class="pro4">
            <td class="pro4" > Date          </td>
            <td class="pro4" > Student ID    </td>
            <td class="pro4" > BKASH Trx ID  </td>
            <td class="pro4" > Category      </td>
            <td class="pro4" > Payable Amount</td>
            <td class="pro4" > Paid Amount   </td>
            <td class="pro4" > Due Amount    </td>

        </tr>            
        <c:forEach var="pd" items="${pList}"> 

            <tr class="pro3">
                <td class="pro3" >${pd.p_date}</td>
                <td class="pro3" >${pd.student_id}</td>
                <td class="pro3" >${pd.btrx_id}</td>
                <td class="pro3" >${pd.payment_category}</td>
                <td class="pro3" >${pd.payable_amount}</td>
                <td class="pro3 paid" >${pd.paying_amount}</td>
                <td class="pro3 due" >${pd.due_amount}</td>

            </tr>

        </c:forEach>
        <tr>
            <td></td>
            <td></td>
            <td></td>

            <td class="pro4">Total</td>
            <td class="pro4"></td>
            <td class="pro4">${Total}</td>
            <td class="pro4">${Due}</td>
        </tr> 
    </table> 

</c:if>


<c:if test="${findStudentDuAmount == true}">

    <br/><br/>

    <h2 style="text-align: center"><b>Due Payment History</b></h2>
    
    <table style="width: 80%">

        <tr class="pro4">
            <td class="pro4" > Date </td>
            <td class="pro4" > Student ID</td>
            <td class="pro4" > Category </td>
            <td class="pro4" > Payable Amount</td>
            <td class="pro4" > Paid Amount</td>
            <td class="pro4" > Due Amount</td>
            <td class="pro4" > To Do</td>
        </tr>            
        <c:forEach var="pd" items="${duelist}"> 

            <tr class="pro3">
                <td class="pro3">${pd.p_date}</td>
                <td class="pro3"> ${pd.student_id}</td>
                <td class="pro3"> ${pd.payment_category}</td>
                <td class="pro3" >${pd.payable_amount}</td>
                <td class="pro3" >${pd.paying_amount}</td>
                <td class="pro3" >${pd.due_amount}</td>
                <td class="pro3" style="padding: 7px" >
                    <a href="${contextRoot}/adm/duepaymentform/${user.id}/${pd.serial_id}" class="btn btn-default" >  Pay Due Payment</a>
                </td>
            </tr>

        </c:forEach>

    </table>        



</c:if>

<c:if test="${duePaymentForm == true}">

    <h2 style="text-align: center"><b>Due Payment  Form </b></h2>
    <br/>
        
    <p style="color: black"> <span style="color: red" >Note : </span> Pay through this BKASH Merchant Number : <b>01717-232 454</b>
        <br/> or,  
        &emsp;
        &nbsp;
        Enter BILL  Number instead of Trx ID.
    </p>

    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/adm/updateduepayment/${user.id}"  method="post" modelAttribute="payment"   >



                <div>
                    <form:input  class="form-control"  path="payable_amount" value="${duelist.payable_amount}"  type="hidden" /> 
                    <form:input  class="form-control"  path="serial_id" value="${duelist.serial_id}"  type="hidden" /> 
                </div>    

                <form:label class=" form-group" path="student_id">Student ID : </form:label>
                    <div>
                    <form:input  class="form-control"  path="student_id" value="${duelist.student_id}" placeholder="Student ID" readonly="true" /> 
                </div> 
                <br/>



                <form:label class=" form-group" path="contact_number">Contact Number  : </form:label>

                    <div >
                    <form:input class="form-control"   path="contact_number" required="true"  value="${duelist.contact_number}"    placeholder="Contact Number"  /> 
                </div> 
                <br/>





                <form:label class=" form-group" path="payment_category">Payment_Category  : </form:label>

                    <div>
                    <form:input  class="form-control" path="payment_category" value="${duelist.payment_category}" placeholder="Payment Category" readonly="true" />

                </div> 
                <br/>

                <form:label class=" form-group" path="due_amount">Due Amount : </form:label>

                    <div >
                    <form:input class="form-control" path="due_amount" value="${duelist.due_amount}" placeholder="Due Amount"   required="true" readonly="true" /> 
                </div> 

                <br/>






                <form:label class=" form-group" path="paying_amount">Paying Amount : </form:label>

                    <div>
                    <form:input class="form-control"  style="width:80%" path="paying_amount" placeholder="Paying Amount"   required="true" /> 

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


        <div class="col-md-1">

        </div>
    </div>





</c:if>

<c:if test="${message != null}">

    <span style="color: black">
        ${message}
    </span>


</c:if>

<c:if test="${receivePaymentForm == true}">

        <h2 style="text-align: center"><b>Payment Form </b></h2>
        
    <p style="color: black"> <span style="color: red" >Note : </span> Pay through this BKASH Merchant Number : <b>01717-232 454</b>
        <br/> or,  
        &emsp;
        &nbsp;
        Enter BILL  Number instead of Trx ID.
    </p>

    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/adm/receivepayment/${user.id}"  method="post" modelAttribute="payment"   >

                <form:label class=" form-group" path="student_id">Student ID : </form:label>
                    <div>
                    <form:input  class="form-control"  path="student_id" placeholder="Student ID" required="true" /> 
                </div> 
                <br/>

                <form:label class=" form-group" path="contact_number">Contact Number  : </form:label>

                    <div >
                    <form:input class="form-control"   path="contact_number" required="true" placeholder="Contact Number"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="payment_category">Payment_Category  : </form:label>

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

                <form:label class=" form-group" path="payable_amount">Payable Amount : </form:label>

                    <div >
                    <form:input class="form-control" path="payable_amount" placeholder="Payable Amount"   required="true" /> 
                </div> 

                <br/>

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

<c:if test="${gototeachers == true}">

    <br/>
    <form:form action="${contextRoot}/adm/findateacher/${user.id}" method="post" modelAttribute="teacher">
        <a href="${contextRoot}/adm/gototeachers/${user.id}" class="btn btn-default"> View All Teacher</a>
        <a href="${contextRoot}/adm/gotoaddteacher/${user.id}" class="btn btn-default"> Add A Teacher</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Teacher</span> 
        <form:input type="number" path="id" placeholder="Type Teacher ID" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form>

    <h2 style="text-align: center"><b>Teacher Records  Table </b></h2>
    <table id="count_it" style="width: 80%">

        <tr class="pro5">
            <td class="pro5" > ID    </td>
            <td class="pro5" > Name    </td>
            <td class="pro5" > Father's Name    </td>
            <td class="pro5" > Mother's Name    </td>
            <td class="pro5" > Email  Address </td>
            <td class="pro5" > Age      </td>
            <td class="pro5" > Gender </td>
            <td class="pro5" > Address   </td>

            <td class="pro5" > Date of Birth    </td>
            <td class="pro5" > Class ID    </td>
            <td class="pro5" > Subject     </td>
            <td class="pro5" > Action     </td>

        </tr>            
        <c:forEach var="t" items="${tList}"> 

            <tr class="pro3">
                <td class="pro3" > ${t.id}    </td>
                <td class="pro3" > ${t.name}   </td>
                <td class="pro3" > ${t.father_name}    </td>
                <td class="pro3" > ${t.mother_name}    </td>
                <td class="pro3" > ${t.email}  </td>
                <td class="pro3" > ${t.age}     </td>
                <td class="pro3" > ${t.gender} </td>
                <td class="pro3" > ${t.address}  </td>

                <td class="pro3" > ${t.birth_date}  </td>
                <td class="pro3" > ${t.dept_id}    </td>
                <td class="pro3" > ${t.subject}     </td>
                <td class="pro3" style="padding-top: 5px; padding-bottom: 5px " > 
                    <a href="${contextRoot}/adm/gotoupdateteacher/${user.id}/${t.id}" class="btn btn-default"> Update</a>
                    <a href="${contextRoot}/adm/deleteteacher/${user.id}/${t.id}" class="btn btn-default"> Delete</a>
                </td>

            </tr>

        </c:forEach>

    </table>  


</c:if>


<c:if test="${AddTeacherForm == true}">
    <br/>
    <form:form action="${contextRoot}/adm/findateacher/${user.id}" method="post" modelAttribute="teacher">
        <a href="${contextRoot}/adm/gototeachers/${user.id}" class="btn btn-default"> View All Teacher</a>
        <a href="${contextRoot}/adm/gotoaddteacher/${user.id}" class="btn btn-default"> Add A Teacher</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Teacher</span> 
        <form:input type="number" path="id" placeholder="Type Teacher ID" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 

    <h2 style="text-align: center"><b>Add Teacher Form </b></h2>
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/adm/addteacher/${user.id}"  method="post" modelAttribute="teacher"   >

                <!--                <fom:label class=" form-group" path="student_id">Student ID : </fom:label>
                                    <div>
                                    <for:input  class="form-control"  path="student_id" placeholder="Student ID" required="true" /> 
                                </div> 
                                <br/>-->

                <form:label class=" form-group" path="name">Teacher Name  : </form:label>

                    <div >
                    <form:input class="form-control"   path="name" required="true" placeholder="name"/> 
                </div> 
                <br/>

                <form:label class=" form-group" path="father_name">Father's Name  : </form:label>

                    <div >
                    <form:input class="form-control"   path="father_name" required="true" placeholder="Father's Name"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="mother_name">Mother's Name  : </form:label>

                    <div >
                    <form:input class="form-control"   path="mother_name" required="true" placeholder="Mother's Name"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="address">Address  : </form:label>

                    <div >
                    <form:textarea class="form-control"   path="address" required="true" placeholder="Address"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="email">Email Address : </form:label>

                    <div >
                    <form:input class="form-control"   path="email" required="true" placeholder="email"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="age">Age : </form:label>

                    <div >
                    <form:input class="form-control"   path="age" required="true" placeholder="age"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="birth_date">Date of Birth : </form:label>

                    <div >
                    <form:input class="form-control"   path="birth_date" required="true" type="date"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="gender">Gender : </form:label>

                    <div >
                    <form:radiobutton class="form"   path="gender" value="Male" required="true" placeholder="" /> Male &emsp;&emsp;  
                    <form:radiobutton class="form"   path="gender" value="Female" required="true" placeholder="" /> Female
                </div> 
                <br/>
                <form:label class=" form-group" path="subject">Subject : </form:label>

                    <div >
                    <form:input class="form-control"   path="subject" required="true" placeholder=" Preferred Subject" /> 
                </div> 
                <br/>
                <form:label class=" form-group" path="dept_id">Subject ID : </form:label>

                    <div >
                    <form:input class="form-control"   path="dept_id" required="true" placeholder=" Subject ID" /> 
                </div> 
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

<c:if test="${TeacherUpdateForm == true}">

    <br/>
    <form:form action="${contextRoot}/adm/findateacher/${user.id}" method="post" modelAttribute="teacher">
        <a href="${contextRoot}/adm/gototeachers/${user.id}" class="btn btn-default"> View All Teacher</a>
        <a href="${contextRoot}/adm/gotoaddteacher/${user.id}" class="btn btn-default"> Add A Teacher</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Teacher</span> 
        <form:input type="number" path="id" placeholder="Type Teacher ID" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 


        <h2 style="text-align: center"><b>Teacher Information Update Form</b></h2>

    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/adm/updateteacher/${user.id}"  method="post" modelAttribute="teacher"   >

                <form:label class=" form-group" path="id">Teacher ID : </form:label>
                    <div>
                    <form:input  class="form-control" value="${td.id}" readonly="true"  path="id" placeholder="Student ID" required="true" /> 
                </div> 
                <br/>

                <form:label class=" form-group" path="name">Teacher Name  : </form:label>

                    <div >
                    <form:input class="form-control"  value="${td.name}"   path="name" required="true" placeholder="name"/> 
                </div> 
                <br/>

                <form:label class=" form-group"  path="father_name">Father's Name  : </form:label>

                    <div >
                    <form:input class="form-control"   value="${td.father_name}" path="father_name" required="true" placeholder="Father's Name"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="mother_name">Mother's Name  : </form:label>

                    <div >
                    <form:input class="form-control" value="${td.mother_name}"   path="mother_name" required="true" placeholder="Mother's Name"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="address">Address  : </form:label>
                <div> <span class="pro4">${td.name}</span></div>
                <div >
                    <form:textarea class="form-control"   path="address" required="true" placeholder="Address"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="email">Email Address : </form:label>

                    <div >
                    <form:input class="form-control"  value="${td.email}"  path="email" required="true" placeholder="email"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="age">Age : </form:label>

                    <div >
                    <form:input class="form-control" value="${td.age}"  path="age" required="true" placeholder="age"/> 
                </div> 
                <br/>
                <form:label class=" form-group"  path="birth_date">Date of Birth : </form:label>

                    <div >
                    <form:input class="form-control" value="${td.birth_date}"   path="birth_date" required="true" type="date"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="gender">Gender :  </form:label>
                <div> <span class="pro4"> ${td.gender}</span></div> <br/>
                <div >
                    <form:radiobutton class="form"   path="gender" value="Male" required="true" placeholder="" /> Male &emsp;&emsp;  
                    <form:radiobutton class="form"   path="gender" value="Female" required="true" placeholder="" /> Female
                </div> 
                <br/>
                <form:label class=" form-group" path="subject">Subject : </form:label>

                    <div >
                    <form:input class="form-control" value="${td.subject}"   path="subject" required="true" placeholder=" Preferred Subject" /> 
                </div> 
                <br/>
                <form:label class=" form-group" path="dept_id">Subject ID : </form:label>

                    <div >
                    <form:input class="form-control" value="${td.dept_id}"  path="dept_id" required="true" placeholder=" Subject ID" /> 
                </div> 
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

<c:if test="${TeacherSearchResult == true}" > 
    <br/>
    <form:form action="${contextRoot}/adm/findateacher/${user.id}" method="post" modelAttribute="teacher">
        <a href="${contextRoot}/adm/gototeachers/${user.id}" class="btn btn-default"> View All Teacher</a>
        <a href="${contextRoot}/adm/gotoaddteacher/${user.id}" class="btn btn-default"> Add A Teacher</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Teacher</span> 
        <form:input type="number" path="id" placeholder="Type Teacher ID" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 
    <br/>
    <br/>

    Teacher Search Result :
    <table style="width: 80%">
        <tr> <td class="pro6"> Title </td>
            <td class="pro6"> Information</td>
        </tr>
        <tr class="pro6">
            <td class="pro6" > ID    </td>   
            <td class="pro6" > ${td.id}    </td>
        </tr>
        <tr>
            <td class="pro6" > Name    </td>
            <td class="pro6" > ${td.name}   </td>
        </tr>
        <tr>
            <td class="pro6" > Father's Name   </td>
            <td class="pro6" > ${td.father_name}   </td>
        </tr>
        <tr>
            <td class="pro6" > Mother's Name    </td>
            <td class="pro6" > ${td.mother_name}   </td>
        </tr>
        <tr>
            <td class="pro6" > Email  Address   </td>
            <td class="pro6" >  ${td.email}   </td>
        </tr>
        <tr>
            <td class="pro6" > Age     </td>
            <td class="pro6" > ${td.age}   </td>
        </tr>
        <tr>
            <td class="pro6" >  Date of Birth      </td>
            <td class="pro6" > ${td.birth_date}   </td>
        </tr>
        <tr>
            <td class="pro6" >Gender    </td>
            <td class="pro6" > ${td.gender}   </td>
        </tr>
        <tr>
            <td class="pro6" > Address    </td>
            <td class="pro6" > ${td.address}   </td>
        </tr>
        <tr>
            <td class="pro6" > Subject ID   </td>
            <td class="pro6" > ${td.dept_id}   </td>
        </tr>
        <tr>
            <td class="pro6" > SUBJECT   </td>
            <td class="pro6" > ${td.subject}   </td>
        </tr>








    </table>  

    <br/>
    <br/>

    <center>
        <a href="${contextRoot}/adm/gotoupdateteacher/${user.id}/${td.id}" class="btn btn-default"> Update</a> &emsp;&emsp;
        <a href="${contextRoot}/adm/deleteteacher/${user.id}/${td.id}" class="btn btn-default"> Delete</a>
    </center>

</c:if> 







<!--###########################################################################################-->      

<c:if test="${gotostudents == true}">

    <br/>
    <form:form action="${contextRoot}/adm/findastudent/${user.id}" method="post" modelAttribute="student">
        <a href="${contextRoot}/adm/gotostudents/${user.id}" class="btn btn-default"> View All Student</a>
        <a href="${contextRoot}/adm/gotoaddstudent/${user.id}" class="btn btn-default"> Add A Student</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Student</span> 
        <form:input type="number" path="id" placeholder="Type Student ID" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form>

        <h2 style="text-align: center"><b>Students Records  Table  </b></h2>

    <table id="count_it" style="width: 80%">

        <tr class="pro5">
            <td class="pro5" > ID    </td>
            <td class="pro5" > Name    </td>
            <td class="pro5" > Father's Name    </td>
            <td class="pro5" > Mother's Name    </td>
            <td class="pro5" > Address   </td>
            <td class="pro5" > Contact No   </td>
            <td class="pro5" > Email  Address </td>
            <td class="pro5" > Gender </td>
            <td class="pro5" > Date of Birth    </td>
            <td class="pro5" > Class ID    </td>
            <td class="pro5" > Action     </td>

        </tr>            
        <c:forEach var="s" items="${sList}"> 


            <tr class="pro3">
                <td class="pro3" > ${s.id}    </td>
                <td class="pro3" > ${s.name}   </td>
                <td class="pro3" > ${s.father_name}    </td>
                <td class="pro3" > ${s.mother_name}    </td>
                <td class="pro3" > ${s.address}  </td>
                <td class="pro3" > ${s.contact_no}  </td>
                <td class="pro3" > ${s.email}  </td>
                <td class="pro3" > ${s.gender} </td>
                <td class="pro3" > ${s.birth_date}  </td>
                <td class="pro3" > ${s.dept_id}    </td>
                <td class="pro3" style="padding-top: 5px; padding-bottom: 5px " > 
                    <a href="${contextRoot}/adm/gotoupdatestudent/${user.id}/${s.id}" class="btn btn-default"> Update</a>
                    <a href="${contextRoot}/adm/deletestudent/${user.id}/${s.id}" class="btn btn-default"> Delete</a>
                </td>

            </tr>

        </c:forEach>

    </table>  


</c:if>


<c:if test="${AddStudentForm == true}">
    <br/>
    <form:form action="${contextRoot}/adm/findastudent/${user.id}" method="post" modelAttribute="student">
        <a href="${contextRoot}/adm/gotostudents/${user.id}" class="btn btn-default"> View All Student</a>
        <a href="${contextRoot}/adm/gotoaddstudent/${user.id}" class="btn btn-default"> Add A Student</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Student</span> 
        <form:input type="number" path="id" placeholder="Type Student ID" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 



    <center> <br/>
        <span class="btn btn-default">  Student Add Form 
        </span>   </center><br/>


    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/adm/addstudent/${user.id}"  method="post" modelAttribute="student"   >

                <!--                <fom:label class=" form-group" path="student_id">Student ID : </fom:label>
                                    <div>
                                    <for:input  class="form-control"  path="student_id" placeholder="Student ID" required="true" /> 
                                </div> 
                                <br/>-->

                <form:label class=" form-group" path="name">Student Name  : </form:label>

                    <div >
                    <form:input class="form-control"   path="name" required="true" placeholder="name"/> 
                </div> 
                <br/>

                <form:label class=" form-group" path="father_name">Father's Name  : </form:label>

                    <div >
                    <form:input class="form-control"   path="father_name" required="true" placeholder="Father's Name"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="mother_name">Mother's Name  : </form:label>

                    <div >
                    <form:input class="form-control"   path="mother_name" required="true" placeholder="Mother's Name"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="address">Address  : </form:label>

                    <div >
                    <form:textarea class="form-control"   path="address" required="true" placeholder="Address"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="contact_no">Contact No  : </form:label>

                    <div  style="color:black; font-weight: bold; width: 70%">
                    <form:input  style="width:70%;" class="" type="number"   path="contact_no" required="true" placeholder="Contact Number"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="email">Email Address : </form:label>

                    <div >
                    <form:input class="form-control"   path="email" required="true" placeholder="email address"/> 
                </div> 

                <br/>
                <form:label class=" form-group" path="birth_date">Date of Birth : </form:label>

                    <div >
                    <form:input class="form-control"   path="birth_date" required="true" type="date"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="gender">Gender : </form:label>

                    <div >
                    <form:radiobutton class="form"   path="gender" value="Male" required="true" placeholder="" /> Male &emsp;&emsp;  
                    <form:radiobutton class="form"   path="gender" value="Female" required="true" placeholder="" /> Female
                </div> 

                <br/>
                <form:label class=" form-group" path="dept_id">Subject ID : </form:label>

                    <div >
                    <form:input class="form-control"   path="dept_id" required="true" placeholder=" Subject ID" /> 
                </div> 
                <br/>
                <form:label class=" form-group" path="course_name">Course Name : </form:label>

                    <div >
                    <form:input class="form-control"   path="course_name" required="true" placeholder=" Course Name" /> 
                </div> 
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

<c:if test="${StudentUpdateForm == true}">

    <br/>
    <form:form action="${contextRoot}/adm/findateacher/${user.id}" method="post" modelAttribute="student">
        <a href="${contextRoot}/adm/gotostudents/${user.id}" class="btn btn-default"> View All Teacher</a>
        <a href="${contextRoot}/adm/gotoaddstudent/${user.id}" class="btn btn-default"> Add A Teacher</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Student</span> 
        <form:input type="number" path="id" placeholder="Type Student ID" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 



    <center> <br/>
        <span class="btn btn-default">  Student Information Update Form 
        </span>   </center><br/>


    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/adm/updatestudent/${user.id}"  method="post" modelAttribute="student"   >

                <form:label class=" form-group" path="id">Student ID : </form:label>
                    <div>
                    <form:input  class="form-control" value="${sd.id}" readonly="true"  path="id" placeholder="Student ID" required="true" /> 
                </div> 
                <br/> <form:label class=" form-group" path="name">Student Name  : </form:label>

                    <div >    <form:input class="form-control"  value="${sd.name}"   path="name" required="true" placeholder="name"/> 
                </div> 
                <br/>               <form:label class=" form-group"  path="father_name">Father's Name  : </form:label>

                    <div >                    <form:input class="form-control"   value="${sd.father_name}" path="father_name" required="true" placeholder="Father's Name"/> 
                </div>                 <br/>
                <form:label class=" form-group" path="mother_name">Mother's Name  : </form:label>
                    <div >
                    <form:input class="form-control" value="${sd.mother_name}"   path="mother_name" required="true" placeholder="Mother's Name"/> 
                </div> 
                <br/>                
                <form:label class=" form-group" path="address" >Address  : </form:label>
                    <div>
                        <span class="pro4">${sd.address}</span>
                </div>
                <div> 
                    <form:textarea class="form-control"   path="address" required="true" placeholder="Address"/> 
                </div>
                <br/>                
                <form:label class=" form-group" path="address">Contact Number  : </form:label>
                    <div>
                        <span class="pro4">${sd.contact_no}</span>
                </div><br/>
                <div><form:input style="width:70%" class="form"  type="number"  path="contact_no" required="true" placeholder="Contact Number"/> 
                </div>
                <br/>
                <form:label class=" form-group" path="email">Email Address : </form:label>

                    <div><form:input class="form-control"  value="${sd.email}"  path="email" required="true" placeholder="email"/> 
                </div>       <br/>         <form:label class=" form-group"  path="birth_date">Date of Birth : </form:label>

                    <div>           <form:input class="form-control" value="${sd.birth_date}"   path="birth_date" required="true" type="date"/> 
                </div>                 <br/>
                <form:label class=" form-group" path="gender">Gender :  </form:label>
                <div> <span class="pro4"> ${sd.gender}</span></div> <br/>
                <div >                    <form:radiobutton class="form"   path="gender" value="Male" required="true" placeholder="" /> Male &emsp;&emsp;  
                    <form:radiobutton class="form"   path="gender" value="Female" required="true" placeholder="" /> Female
                </div>                <br/>
                <form:label class=" form-group" path="dept_id">Subject ID : </form:label>
                <div >      <form:input class="form-control" value="${sd.dept_id}"  path="dept_id" required="true" placeholder=" Subject ID" /> 
                </div>           <br/>
                <center>                    <span>
                        <form:button type="submit" class="btn btn-default ">Submit</form:button>
                        </span>                    </center> 
                    <br/>
            </form:form>

        </div>


        <div class="col-md-3">

        </div>
    </div>  



</c:if>

<c:if test="${StudentSearchResult == true}" > 
    <br/>
    <form:form action="${contextRoot}/adm/findastudent/${user.id}" method="post" modelAttribute="student">
        <a href="${contextRoot}/adm/gotostudents/${user.id}" class="btn btn-default"> View All Student</a>
        <a href="${contextRoot}/adm/gotoaddstudent/${user.id}" class="btn btn-default"> Add A Student</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Student</span> 
        <form:input type="number" path="id" placeholder="Type Student ID" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 
    <br/>
    <br/>

    Student Search Result :
    <table style="width: 80%">
        <tr> <td class="pro6"> Title </td>
            <td class="pro6"> Information</td>
        </tr>
        <tr class="pro6">
            <td class="pro6" > ID    </td>   
            <td class="pro6" > ${sd.id}    </td>
        </tr>
        <tr>
            <td class="pro6" > Name    </td>
            <td class="pro6" > ${sd.name}   </td>
        </tr>
        <tr>
            <td class="pro6" > Father's Name   </td>
            <td class="pro6" > ${sd.father_name}   </td>
        </tr>
        <tr>
            <td class="pro6" > Mother's Name    </td>
            <td class="pro6" > ${sd.mother_name}   </td>
        </tr>
        <tr>
            <td class="pro6" > Email  Address   </td>
            <td class="pro6" >  ${sd.email}   </td>
        </tr>

        <tr>
            <td class="pro6" >  Date of Birth      </td>
            <td class="pro6" > ${sd.birth_date}   </td>
        </tr>
        <tr>
            <td class="pro6" >Gender    </td>
            <td class="pro6" > ${sd.gender}   </td>
        </tr>
        <tr>
            <td class="pro6" > Address    </td>
            <td class="pro6" > ${sd.address}   </td>
        </tr>
        <tr>
            <td class="pro6" > Subject ID   </td>
            <td class="pro6" > ${sd.dept_id}   </td>
        </tr>









    </table>  

    <br/>
    <br/>

    <center>
        <a href="${contextRoot}/adm/gotoupdatestudent/${user.id}/${sd.id}" class="btn btn-default"> Update</a> &emsp;&emsp;
        <a href="${contextRoot}/adm/deletestudent/${user.id}/${sd.id}" class="btn btn-default"> Delete</a>
    </center>

</c:if> 






<!--######################################################################################-->

<c:if test="${gotodepartments == true}">

    <br/>
    <form:form action="${contextRoot}/adm/findadepartment/${user.id}" method="post" modelAttribute="department">
        <a href="${contextRoot}/adm/gotodepartments/${user.id}" class="btn btn-default"> View All Subject</a>
        <a href="${contextRoot}/adm/gotoadddepartment/${user.id}" class="btn btn-default"> Add A Subject</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Subject</span> 
        <form:input type="number" path="id" placeholder="Type Subject ID" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 
    <br/>
    <center>
        <br/>

        <span class="btn btn-default">
            Subject Records  Table  

        </span>
        <br/> <br/>
    </center> 

    <table id="count_it" style="width: 80%">

        <tr class="pro5" style="text-align: center">
            <td class="pro5" style="text-align: center"> Subject ID    </td>
            <td class="pro5"  style="text-align: center"> Subject Name    </td>

            <td class="pro5" style="text-align: center"> Action     </td>

        </tr>            
        <c:forEach var="d" items="${dlist}"> 


            <tr class="pro3" >
                <td class="pro3" > ${d.id}    </td>
                <td class="pro3" > ${d.dept_name}   </td>
                <td class="pro3" style="padding-top: 5px; padding-bottom: 5px " > 
                    <a href="${contextRoot}/adm/gotoupdatedepartment/${user.id}/${d.id}" class="btn btn-default"> Update</a>
                    <a href="${contextRoot}/adm/deletedepartment/${user.id}/${d.id}" class="btn btn-default"> Delete</a>
                </td>

            </tr>

        </c:forEach>

    </table>  
</c:if>


<c:if test="${DepartmentSearchResult == true}">

    <br/>
    <form:form action="${contextRoot}/adm/findadepartment/${user.id}" method="post" modelAttribute="department">
        <a href="${contextRoot}/adm/gotodepartments/${user.id}" class="btn btn-default"> View All Subject</a>
        <a href="${contextRoot}/adm/gotoadddepartment/${user.id}" class="btn btn-default"> Add A Subject</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Subject</span> 
        <form:input type="number" path="id" placeholder="Type Subject ID" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 
    <br/>
    <br/>

    Subject Search Result :
    <table style="width: 80%">
        <tr> <td class="pro6"> Title </td>
            <td class="pro6"> Information</td>
        </tr>
        <tr class="pro6">
            <td class="pro6" >Subject ID    </td>   
            <td class="pro6" > ${dd.id}    </td>
        </tr>
        <tr>
            <td class="pro6" > Subject Name    </td>
            <td class="pro6" > ${dd.dept_name}   </td>
        </tr>










    </table>  

    <br/>
    <br/>

    <center>
        <a href="${contextRoot}/adm/gotoupdatedepartment/${user.id}/${dd.id}" class="btn btn-default"> Update</a>
        <a href="${contextRoot}/adm/deletedepartment/${user.id}/${dd.id}" class="btn btn-default"> Delete</a>
    </center>

</c:if>


<c:if test="${AddDepartmentForm == true}">

    <br/>
    <form:form action="${contextRoot}/adm/findadepartment/${user.id}" method="post" modelAttribute="department">
        <a href="${contextRoot}/adm/gotodepartments/${user.id}" class="btn btn-default"> View All Subject</a>
        <a href="${contextRoot}/adm/gotoadddepartment/${user.id}" class="btn btn-default"> Add A Subject</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Subject</span> 
        <form:input type="number" path="id" placeholder="Type Subject ID" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 
    <center> <br/>
        <span class="btn btn-default">  Subject Add Form 
        </span>   </center><br/>


    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/adm/adddepartment/${user.id}"  method="post" modelAttribute="department"   >


                <br/> <form:label class=" form-group" path="dept_name">Subject Name  : </form:label>
                    <div>
                    <form:input  class="form-control"   path="dept_name" placeholder="Subject Name" required="true" /> 
                </div> <br/>
                <center>                    <span>
                        <form:button type="submit" class="btn btn-default ">Submit</form:button>
                        </span>                    </center> 
                    <br/>
            </form:form>

        </div>


        <div class="col-md-3">

        </div>
    </div>  

</c:if>


<c:if test="${DepartmentUpdateForm == true}">

    <br/>
    <form:form action="${contextRoot}/adm/findadepartment/${user.id}" method="post" modelAttribute="department">
        <a href="${contextRoot}/adm/gotodepartments/${user.id}" class="btn btn-default"> View All Subject</a>
        <a href="${contextRoot}/adm/gotoadddepartment/${user.id}" class="btn btn-default"> Add A Subject</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Subject</span> 
        <form:input type="number" path="id" placeholder="Type Subject ID" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 
    <center> <br/>
        <span class="btn btn-default">  Subject Information Update Form 
        </span>   </center><br/>


    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/adm/updatedepartment/${user.id}"  method="post" modelAttribute="department"   >


                <br/> <form:label class=" form-group" path="id">Subject ID  : </form:label>
                    <div>
                    <form:input  class="form-control" value="${dd.id}"  readonly="true"  path="id" placeholder="Subject ID" required="true" /> 
                </div>
                <br/> <form:label class=" form-group" path="dept_name">Subject Name  : </form:label>
                    <div>
                    <form:input  class="form-control"   value="${dd.dept_name}"  path="dept_name" placeholder="Subject Name" required="true" /> 
                </div>

                <br/>
                <center>                    <span>
                        <form:button type="submit" class="btn btn-default ">Submit</form:button>
                        </span>                    </center> 
                    <br/>
            </form:form>

        </div>


        <div class="col-md-3">

        </div>
    </div>  


</c:if>
<c:if test="${gotoschedule == true }">
    <br/>
    <form:form action="${contextRoot}/adm/findschedule/${user.id}" method="post" modelAttribute="schedule">
        <a href="${contextRoot}/adm/gotoschedule/${user.id}" class="btn btn-default"> View All Class Schedules</a>
        <a href="${contextRoot}/adm/gotoaddschedule/${user.id}" class="btn btn-default"> Add A Class Schedule</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Schedule</span> 
        <form:input  path="dept_id" placeholder="Subject ID ( number )" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form>   
    <h2 style="text-align: center"><b>Class Schedules   Table</b></h2>

    <table id="count_it" style="width: 80%">

        <tr class="pro5">
            <td class="pro5" > ID    </td>
            <td class="pro5" > Class ID    </td>
            <td class="pro5" > Section ID    </td>
            <td class="pro5" > Course Title   </td>
            <td class="pro5" > Room  No   </td>
            <td class="pro5" > Teacher Name   </td>
            <td class="pro5" > Class Schedule </td>
            <td class="pro5" > Days  </td>
            <td class="pro5" > Action     </td>

        </tr>            
        <c:forEach var="c" items="${clist}"> 


            <tr class="pro3">
                <td class="pro3" > ${c.id}    </td>
                <td class="pro3" > ${c.dept_id}   </td>
                <td class="pro3" > ${c.course_id}    </td>
                <td class="pro3" > ${c.course_title}    </td>
                <td class="pro3" > ${c.room_no}  </td>
                <td class="pro3" > ${c.teacher}  </td>
                <td class="pro3" > ${c.class_schedule}  </td>
                <td class="pro3" > ${c.days} </td>

                <td class="pro3" style="padding-top: 5px; padding-bottom: 5px " > 
                    <a href="${contextRoot}/adm/gotoupdateschedule/${user.id}/${c.id}" class="btn btn-default"> Update</a>
                    <a href="${contextRoot}/adm/deleteschedule/${user.id}/${c.id}" class="btn btn-default"> Delete</a>
                </td>

            </tr>

        </c:forEach>

    </table>  



</c:if>
<c:if test="${ScheduleUpdateForm == true}">
    <br/>
    <form:form action="${contextRoot}/adm/findschedule/${user.id}" method="post" modelAttribute="schedule">
        <a href="${contextRoot}/adm/gotoschedule/${user.id}" class="btn btn-default"> View All Class Schedules</a>
        <a href="${contextRoot}/adm/gotoaddschedule/${user.id}" class="btn btn-default"> Add A Class Schedule</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Schedule</span> 
        <form:input  path="dept_id" placeholder="Subject ID ( number )" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 


    <center> <br/>
        <span class="btn btn-default">  Schedule Information Update Form 
        </span>   </center><br/>


    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/adm/updateschedule/${user.id}"  method="post" modelAttribute="schedule"   >

                <form:label class=" form-group"  path="id">SCHEDULE ID  : </form:label>

                    <div >
                    <form:input class="form-control" type="number"  path="id" required="true" placeholder="SCHEDULE ID" value="${cd.id}" readonly="true"/> 
                </div> 
                <br/>
                <form:label class=" form-group"  path="dept_id">Subject ID  : </form:label>

                    <div >
                    <form:input class="form-control" type="number"  path="dept_id" required="true" placeholder="Subject ID" value="${cd.dept_id}" /> 
                </div> 
                <br/>

                <form:label class="form-group" path="course_id">Section ID  : </form:label>

                    <div >
                    <form:input class="form-control"   type="number" value="${cd.course_id}" path="course_id" required="true" placeholder="Section ID"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="course_title">COURSE TITLE  : </form:label>

                    <div >
                    <form:input class="form-control" value="${cd.course_title}"   path="course_title" required="true" placeholder="COURSE TITLE"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="room_no">ROOM NO : </form:label>

                    <div >
                    <form:input class="form-control" value="${cd.room_no}"   path="room_no" required="true" placeholder="ROOM NO "/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="teacher">TEACHER NAME  : </form:label>

                    <div  style="color:black; font-weight: bold; ">
                    <form:input  class="form-control"  value="${cd.teacher}"  path="teacher" required="true" placeholder="TEACHER NAME"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="class_schedule">CLASS SCHEDULE</form:label> &emsp;${cd.class_schedule}

                    <div >
                    <form:input class="form-control"   path="class_schedule" required="true" type="time"/> 
                </div> 

                <br/>
                <form:label class=" form-group" path="days">SCHEDULE DAYS : </form:label>

                    <div >
                    <form:input class="form-control" value="${cd.days}"   path="days" required="true" /> 
                </div> 
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
<c:if test="${AddScheduleForm == true}">
    <br/>
    <form:form action="${contextRoot}/adm/findschedule/${user.id}" method="post" modelAttribute="schedule">
        <a href="${contextRoot}/adm/gotoschedule/${user.id}" class="btn btn-default"> View All Class Schedules</a>
        <a href="${contextRoot}/adm/gotoaddschedule/${user.id}" class="btn btn-default"> Add A Class Schedule</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Schedule</span> 
        <form:input type="number"  path="dept_id" placeholder="Subject ID ( number )" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 

    <center> <br/>
        <span class="btn btn-default">  Schedule Add Form 
        </span>   </center><br/>


    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/adm/addschedule/${user.id}"  method="post" modelAttribute="schedule"   >



                <form:label class=" form-group" path="dept_id">Subject ID  : </form:label>

                    <div >
                    <form:input class="form-control" type="number"  path="dept_id" required="true" placeholder="Subject ID"/> 
                </div> 
                <br/>

                <form:label class=" form-group" path="course_id">Section ID  : </form:label>

                    <div >
                    <form:input class="form-control" type="number"  path="course_id" required="true" placeholder="COURSE ID"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="course_title">COURSE TITLE  : </form:label>

                    <div >
                    <form:input class="form-control"   path="course_title" required="true" placeholder="COURSE TITLE"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="room_no">ROOM NO : </form:label>

                    <div >
                    <form:input class="form-control"    path="room_no" required="true" placeholder="ROOM NO "/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="teacher">TEACHER NAME  : </form:label>

                    <div  style="color:black; font-weight: bold; ">
                    <form:input  class="form-control"    path="teacher" required="true" placeholder="TEACHER NAME"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="class_schedule">CLASS SCHEDULE</form:label>

                    <div >
                    <form:input class="form-control"  path="class_schedule" required="true" type="time"/> 
                </div> 

                <br/>
                <form:label class=" form-group" path="days">SCHEDULE DAYS : </form:label>

                    <div >
                    <form:input class="form-control"   path="days" required="true" /> 
                </div> 
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


<c:if test="${ScheduleSearchResult == true}">

    <br/>
    <form:form action="${contextRoot}/adm/findschedule/${user.id}" method="post" modelAttribute="schedule">
        <a href="${contextRoot}/adm/gotoschedule/${user.id}" class="btn btn-default"> View All Class Schedules</a>
        <a href="${contextRoot}/adm/gotoaddschedule/${user.id}" class="btn btn-default"> Add A Class Schedule</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search Schedule</span> 
        <form:input type="number"  path="dept_id" placeholder="Subject ID ( number )" />
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 
    <br/>
    <br/>

    SCHEDULE  Search Result :
    <table style="width: 80%">
        <tr> <td class="pro6"> Title </td>
            <td class="pro6"> Information</td>
        </tr>
        <tr class="pro6">
            <td class="pro6" >Schedule ID    </td>   
            <td class="pro6" > ${cd.id}    </td>
        </tr>
        <tr class="pro6">
            <td class="pro6" >Subject ID    </td>   
            <td class="pro6" > ${cd.dept_id}    </td>
        </tr>
        <tr>
            <td class="pro6" > Section ID    </td>
            <td class="pro6" > ${cd.course_id}   </td>
        </tr>
        <tr>
            <td class="pro6" > Course Title   </td>
            <td class="pro6" > ${cd.course_title}   </td>
        </tr>


        <tr>
            <td class="pro6" > Room Number    </td>
            <td class="pro6" > ${cd.room_no}   </td>
        </tr>
        <tr>
            <td class="pro6" > Teacher_Name    </td>
            <td class="pro6" > ${cd.teacher}   </td>
        </tr>
        <tr>
            <td class="pro6" > Class Schedule   </td>
            <td class="pro6" > ${cd.class_schedule}   </td>
        </tr>
        <tr>
            <td class="pro6" > DAYS    </td>
            <td class="pro6" > ${cd.days}   </td>
        </tr>
    </table>  

    <br/>
    <br/>

    <center>
        <a href="${contextRoot}/adm/gotoupdateschedule/${user.id}/${cd.id}" class="btn btn-default"> Update</a>
        <a href="${contextRoot}/adm/deleteschedule/${user.id}/${cd.id}" class="btn btn-default"> Delete</a>
    </center>

</c:if>
<c:if test="${gotonotice == true}"> 
    <br/>
    <form:form action="${contextRoot}/dispatch/findnotice/${user.id}" method="post" modelAttribute="notice">
        <a href="${contextRoot}/dispatch/gotonotice/${user.id}" class="btn btn-default"> View All Notices</a>
        <a href="${contextRoot}/dispatch/gotoaddnotice/${user.id}" class="btn btn-default"> Add A Notice</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search </span> 
        <form:input path="id" value="0" placeholder=" write  ID" />
        <form:select style="width:80px; height:25px"  path="type" placeholder=" Select type" required="true" >
            <option></option>
            <option>Notice </option>
            <option>News </option>
            <option>Event</option>

        </form:select>
        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form>
    <center>
        <br/>

        <span class="btn btn-default">
            Notice, News & Event Records  




        </span>
        <br/> <br/>
    </center> 

    <table id="count_it" style="width: 80%">

        <tr class="pro5">
            <td class="pro5" style="width:5%;"> ID    </td>
            <td class="pro5" style="width:5%;">Type   </td>
            <td class="pro5" style="width:15%; text-align: center" > Title   </td>
            <td class="pro5" style="width:15%; text-align: center">Subject   </td>
            <td class="pro5" style=" text-align: center"> Body   </td>
            <td class="pro5" style="width:10%"> Published Date   </td>
            <td class="pro5" style="width:15%; text-align: center"  > Action     </td>

        </tr>            
        <c:forEach var="n" items="${nlist}"> 


            <tr class="pro3">
                <td class="pro3" > ${n.id}    </td>
                <td class="pro3" > ${n.type}   </td>
                <td class="pro3" > ${n.title}    </td>
                <td class="pro3" > ${n.subject}    </td>
                <td class="pro3" > ${n.body}  </td>
                <td class="pro3" style="width:10%" > ${n.p_date}  </td>

                <td class="pro3" style="width:10%; padding-top: 5px; padding-bottom: 5px " > 
                    <a href="${contextRoot}/dispatch/gotoupdatenotice/${user.id}/${n.id}" class="btn btn-default"> Update</a>
                    <a href="${contextRoot}/dispatch/deletenotice/${user.id}/${n.id}" class="btn btn-default"> Delete</a>
                </td>

            </tr>

        </c:forEach>

    </table>         


</c:if>
<c:if test="${gotaddonoticeform == true}"> 
    <br/>
    <form:form action="${contextRoot}/dispatch/findnotice/${user.id}" method="post" modelAttribute="notice">
        <a href="${contextRoot}/dispatch/gotonotice/${user.id}" class="btn btn-default"> View All Notices</a>
        <a href="${contextRoot}/dispatch/gotoaddnotice/${user.id}" class="btn btn-default"> Add A Notice</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search </span> 
        <form:input path="id" value="0" placeholder=" write  ID" />
        <form:select style="width:80px; height:25px"  path="type" placeholder=" Select type" required="true" >
            <option></option>
            <option>Notice </option>
            <option>News </option>
            <option>Event</option>
        </form:select>

        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 
    <center> <br/>
        <span class="btn btn-default">  Notice, News & Event Add Form 
        </span>   </center><br/>


    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/dispatch/addnotice/${user.id}"  method="post" modelAttribute="notice"   >
                <form:label class=" form-group" path="type">Select Category  : </form:label>

                    <div >
                    <form:select class="form-control"  path="type" placeholder=" Select type" required="true" >
                        <option></option>
                        <option>Notice </option>
                        <option>News </option>
                        <option>Event</option>

                    </form:select>
                </div> 
                <br/>

                <form:label class=" form-group" path="title">Title  : </form:label>

                    <div >
                    <form:input class="form-control"   path="title"  placeholder="TITLE"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="subject">Subject ; </form:label>

                    <div >
                    <form:input class="form-control"   path="subject" required="true" placeholder="SUBJECT" /> 
                </div> 
                <br/>
                <form:label class=" form-group" path="body">Main Body : </form:label>

                    <div >
                    <form:textarea class="form-control"    path="body" required="true" placeholder=" Main Body "/> 
                </div> 
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


<c:if test="${gotoupdatenoticeform == true}">
    <br/>
    <form:form action="${contextRoot}/dispatch/findnotice/${user.id}" method="post" modelAttribute="notice">
        <a href="${contextRoot}/dispatch/gotonotice/${user.id}" class="btn btn-default"> View All Notices</a>
        <a href="${contextRoot}/dispatch/gotoaddnotice/${user.id}" class="btn btn-default"> Add A Notice</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search </span> 
        <form:input path="id" placeholder=" write  ID" />
        <form:select style="width:80px; height:25px"  path="type" placeholder=" Select type" required="true" >
            <option></option>
            <option>Notice </option>
            <option>News </option>
            <option>Event</option>
        </form:select>

        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 

    <center> <br/>
        <span class="btn btn-default"> ${nd.type} Information Update Form 
        </span>   </center><br/>


    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6"> 
            <!--enctype="multipart/form-data"--> 

            <form:form action="${contextRoot}/dispatch/addnotice/${user.id}"  method="post" modelAttribute="notice"   >
                <form:label class=" form-group" path="id">ID  : </form:label>
                <form:input class=" form-control" path="id" readonly="true" required="true" value="${nd.id}"/>
                <form:label class=" form-group" path="type">Select Category  : </form:label>
                <span class="pro4">${nd.type}</span>
                <div >
                    <form:select class="form-control"  path="type" placeholder=" Select type" required="true" >
                        <option></option>
                        <option>Notice </option>
                        <option>News </option>
                        <option>Event</option>

                    </form:select>
                </div> 
                <br/>

                <form:label class=" form-group" path="title">Title  : </form:label>

                    <div >
                    <form:input class="form-control" value="${nd.title}"  path="title"  placeholder="TITLE"/> 
                </div> 
                <br/>
                <form:label class=" form-group" path="subject">Subject ; </form:label>

                    <div >
                    <form:input class="form-control" value="${nd.subject}"   path="subject" required="true" placeholder="SUBJECT" /> 
                </div> 
                <br/>
                <form:label class=" form-group" path="body">Main Body : </form:label>
                <div class="form-group"> ${nd.body}</div>
                <div >
                    <form:textarea class="form-control"    path="body" required="true" placeholder="Main Body "/> 
                </div> 
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


<c:if test="${noticesearchresult == true}">
    <br/>
    <form:form action="${contextRoot}/dispatch/findnotice/${user.id}" method="post" modelAttribute="notice">
        <a href="${contextRoot}/dispatch/gotonotice/${user.id}" class="btn btn-default"> View All Notices</a>
        <a href="${contextRoot}/dispatch/gotoaddnotice/${user.id}" class="btn btn-default"> Add A Notice</a>

        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search </span> 
        <form:input path="id" placeholder=" write  ID" />
        <form:select style="width:80px; height:25px"  path="type" placeholder=" Select type" required="true" >
            <option></option>
            <option>Notice </option>
            <option>News </option>
            <option>Event</option>
        </form:select>

        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form> 
    <br/>
    <br/>

    ${nd.type}  Search Result :
    <br/>
    <table id="count_it" style="width: 80%">

        <tr class="pro5">
            <td class="pro5" style="width:5%;"> ID    </td>
            <td class="pro5" style="width:5%;">Type   </td>
            <td class="pro5" style="width:15%; text-align: center" > Title   </td>
            <td class="pro5" style="width:15%; text-align: center">Subject   </td>
            <td class="pro5" style=" text-align: center"> Body   </td>
            <td class="pro5" style="width:10%"> Published Date   </td>
            <td class="pro5" style="width:15%; text-align: center"  > Action     </td>

        </tr>            
        <c:forEach var="n" items="${nlist}"> 


            <tr class="pro3">
                <td class="pro3" > ${n.id}    </td>
                <td class="pro3" > ${n.type}   </td>
                <td class="pro3" > ${n.title}    </td>
                <td class="pro3" > ${n.subject}    </td>
                <td class="pro3" > ${n.body}  </td>
                <td class="pro3" style="width:10%" > ${n.p_date}  </td>

                <td class="pro3" style="width:10%; padding-top: 5px; padding-bottom: 5px " > 
                    <a href="${contextRoot}/dispatch/gotoupdatenotice/${user.id}/${n.id}" class="btn btn-default"> Update</a>
                    <a href="${contextRoot}/dispatch/deletenotice/${user.id}/${n.id}" class="btn btn-default"> Delete</a>
                </td>

            </tr>

        </c:forEach>

    </table>


</c:if>        
<c:if test="${gotoinbox == true}">    
    <br/>
    <form:form action="${contextRoot}/dispatch/findapplication/${user.id}" method="post" modelAttribute="application">
        <a href="${contextRoot}/dispatch/gotoinbox/${user.id}" class="btn btn-default"> View All Application</a>


        &emsp; &emsp; &emsp;
        <span class="btn btn-default"> Search </span> 
        <form:input path="student_id" placeholder=" write Student  ID" />

        <button class="btn btn-default" >Submit</button> 
        &emsp;
    </form:form>  
    <h2 style="text-align: center"><b> Application Records </b></h2>

    <table id="count_it" style="width: 80%">

        <tr class="pro5">
            <td class="pro5" style="width:5%; text-align: center"> ID    </td>
            <td class="pro5" style="width:5%; text-align: center">Student ID   </td>
            <td class="pro5" style="width:15%; text-align: center" > Email ID   </td>
            <td class="pro5" style="width:15%; text-align: center">Subject   </td>
            <td class="pro5" style=" text-align: center"> Body   </td>
            <td class="pro5" style="width:10%; text-align: center"> Submitted Date   </td>
            <td class="pro5" style="width:10%; text-align: center"  > Action     </td>

        </tr>            
        <c:forEach var="ap" items="${aplist}"> 



            <tr class="pro3">
                <td class="pro3" > ${ap.a_id}    </td>
                <td class="pro3" > ${ap.student_id}   </td>
                <td class="pro3" > ${ap.email}    </td>
                <td class="pro3" > ${ap.subject}    </td>
                <td class="pro3" > ${ap.application_body}    </td>
                <td class="pro3" > ${ap.a_date}  </td>

                <td class="pro3" style="width:10%; padding-top: 5px; padding-bottom: 5px " > 
                    <a href="${contextRoot}/dispatch/deleteapplication/${user.id}/${ap.a_id}" class="btn btn-default"> Delete</a>
                </td>

            </tr>

        </c:forEach>

    </table> 
</c:if>        