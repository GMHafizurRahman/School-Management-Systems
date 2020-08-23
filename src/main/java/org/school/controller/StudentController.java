package org.school.controller;

import java.util.ArrayList;
import java.util.List;
import javax.validation.constraints.Null;
import org.school.model.Admin;
import org.school.model.Application;
import org.school.model.Payment;
import org.school.model.Schedule;
import org.school.model.Students;
import org.school.model.Users;
import org.school.service.HomeService;
import org.school.service.StudentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("s")
public class StudentController {

    @Autowired
    StudentService stuService;
    @Autowired
    HomeService homeService;

//    ---------------------------------------------------------------------//
    @RequestMapping(value = "/getmyprofile/{user_id}")
    public ModelAndView showEvaluation(
            @PathVariable int user_id
    ) {
        Users user = homeService.getUserById(user_id);
        Students stu = stuService.getStudentById(user.getRole_id());
        ModelAndView mv = new ModelAndView("user/student/student_login");
        mv.addObject("userClickGetMyprofile", true);
        mv.addObject("stu", stu);
        mv.addObject("user", user);

        return mv;
    }

    @RequestMapping(value = "/gotoupdatestudent/{user_id}")
    public ModelAndView gotoUpdateStudent(
            @PathVariable int user_id
    ) {
        Users user = homeService.getUserById(user_id);
        Students stu = stuService.getStudentById(user.getRole_id());
        ModelAndView mv = new ModelAndView("user/student/student_login");
        mv.addObject("gotoUpdateStudent", true);
        mv.addObject("student", new Students());
        mv.addObject("stu", stu);
        mv.addObject("user", user);
        return mv;
    }

    @RequestMapping(value = "/gotoupdateuser/{user_id}")
    public ModelAndView gotoUpdateUser(
            @PathVariable int user_id
    ) {
        Users user = homeService.getUserById(user_id);
        Students stu = stuService.getStudentById(user.getRole_id());
        ModelAndView mv = new ModelAndView("user/student/student_login");
        mv.addObject("gotoUpdateUser", true);
        mv.addObject("stu", stu);
        mv.addObject("user", user);
        return mv;
    }

    @PostMapping(value = "/updatestudent/{user_id}")
    public ModelAndView updateStudent(
            @PathVariable int user_id,
            @ModelAttribute Students student
    ) {
        Users user = homeService.getUserById(user_id);

        boolean status = stuService.updateStudent(student);
        Students stu = stuService.getStudentById(user.getRole_id());
        String message;
        if (status == true) {
            message = "<h4 style=\"color:black;\">The Profile has been updated Successfully.</h4>";

        } else {
            message = "<h4 style=\"color:red;\">The Profile Update Procedure was Failure .</h4> <br/> Try Again.";
        }

        ModelAndView mv = new ModelAndView("user/student/student_login");
        mv.addObject("userClickGetMyprofile", true);
        mv.addObject("stu", stu);
        mv.addObject("user", user);
        mv.addObject("message", message);
        return mv;
    }

    @PostMapping(value = "/updateuser/{user_id}")
    public ModelAndView updateUser(
            @PathVariable int user_id,
            @ModelAttribute Users user1
    ) {
        Users user = null;
        Students stu = null;
        boolean status = stuService.updateUser(user1);
        String message;
        if (status == true) {
            message = "<h4 style=\"color:black;\">The Profile has been updated Successfully.</h4>";
            user = homeService.getUserById(user_id);
            stu = stuService.getStudentById(user.getRole_id());
        } else {
            message = "<h4 style=\"color:red;\">The Profile Update Procedure was Failure .</h4> <br/> Try Again.";
        }

        ModelAndView mv = new ModelAndView("user/student/student_login");
        mv.addObject("userClickGetMyprofile", true);
        mv.addObject("stu", stu);
        mv.addObject("user", user);
        mv.addObject("message", message);
        return mv;
    }

//    ---------------------------------------------------------------------//   
    @RequestMapping(value = "/payfeeform/{user_id}")
    public ModelAndView showPayfeeForm(
            @PathVariable int user_id
    ) {
        Users user = homeService.getUserById(user_id);
        Students stu = stuService.getStudentById(user.getRole_id());
        ModelAndView mv = new ModelAndView("user/student/student_login");
        mv.addObject("userClickPayFeeForm", true);
        mv.addObject("payment", new Payment());
        mv.addObject("stu", stu);
        mv.addObject("user", user);
        return mv;
    }

//   consumes = MediaType.MULTIPART_FORM_DATA_VALUE
    @PostMapping(value = "/paymentconfirm/{user_id}")
    public ModelAndView paymentConfirm(
            @PathVariable int user_id,
            @ModelAttribute Payment payment
    ) {
        ModelAndView mv = new ModelAndView("user/student/student_login");

        Users user = homeService.getUserById(user_id);
        Students stu = stuService.getStudentById(user.getRole_id());
        boolean status = stuService.getPayment(payment);
        String message;
        if (status) {
            message = "<h4> Thank you !<br/> Your payment has been done successfully</h4>.";
        } else {
            message = "Sorry! <br/> The Payment has not been completed successfully."
                    + "<br/> <h4><a href=\"/org.school/s/payfeeform/" + user_id + " \">"
                    + " Try Again</a></h4>";
        }

        mv.addObject("stu", stu);
        mv.addObject("user", user);
        mv.addObject("payment", new Payment());
        mv.addObject("message", message);

        return mv;

    }

//    ---------------------------------------------------------------------//    
    @RequestMapping(value = "/applicationform/{user_id}")
    public ModelAndView showApplicationform(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/student/student_login");

        Users user = homeService.getUserById(user_id);
        Students stu = stuService.getStudentById(user.getRole_id());
        mv.addObject("userClickApplication", true);
        mv.addObject("application", new Application());
        mv.addObject("user", user);
        mv.addObject("stu", stu);

        return mv;
    }

//    ---------------------------------------------------------------------//
    @PostMapping(value = "/applicationsubmit/{user_id}")
    public ModelAndView submitApplication(
            @ModelAttribute Application application,
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/student/student_login");
        Users user = homeService.getUserById(user_id);
        Students stu = stuService.getStudentById(user.getRole_id());
        boolean status = stuService.submitApplication(application);
        String message;
        if (status) {
            message = "<h4> Thank you !<br/> Your Application has been submitted successfully</h4>.";
        } else {
            message = "<h4>Sorry! <br/> The Application has not been submitted successfully.."
                    + "<br/>  Please <a href=\"/org.school/s/applicationform/" + user_id + " \">"
                    + " Try Again</a></h4>";

        }

//        mv.addObject("application_status", true);
        mv.addObject("user", user);
        mv.addObject("stu", stu);
        mv.addObject("message", message);
        mv.addObject("application", new Application());

        return mv;
    }

//    ---------------------------------------------------------------------//
    @RequestMapping(value = "/viewapplications/{user_id}")
    public ModelAndView viewApplications(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/student/student_login");
        Users user = homeService.getUserById(user_id);
        Students stu = stuService.getStudentById(user.getRole_id());
        List<Application> list = stuService.getApplictionListByStudentID(user.getRole_id());
        String message = "";
        if (list == null) {
            message = "<h4 style=\"color:red\"> You hava no previous Application ! </h4>";
            mv.addObject("message", message);
            mv.addObject("userClickApplication", true);
        } else {
            mv.addObject("userViewApplications", true);
            mv.addObject("applicationslist", list);
        }

        mv.addObject("application", new Application());
        mv.addObject("user", user);
        mv.addObject("stu", stu);
        return mv;
    }

//    ---------------------------------------------------------------------//
    @RequestMapping(value = "/removeapllication/{id}")
    public ModelAndView removeApllication(
            @PathVariable int id
    ) {

        stuService.removeAppliction(id);
        List<Application> list = stuService.getApplictionList();

        ModelAndView mv = new ModelAndView("user/student/student_login");
        mv.addObject("userViewApplications", true);
        mv.addObject("applicationslist", list);

        return mv;
    }

//    ---------------------------------------------------------------------//
    @RequestMapping(value = "/checkduepayment/{user_id}")
    public ModelAndView checkDuePayment(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/student/student_login");

        Users user = homeService.getUserById(user_id);
        Students stu = stuService.getStudentById(user.getRole_id());

        List<Payment> list = stuService.getDuePaymentListByStudentID(user.getRole_id());
        String message = "";
        if (list == null) {
            message = "<h4 style=\"color:red\"> You hava no Due Payment Record. ! </h4>";
            mv.addObject("message", message);
            mv.addObject("userViewDuePayment", true);
        } else {
            mv.addObject("userViewDuePayment", true);
            mv.addObject("DuePaymentlist", list);
        }
        mv.addObject("user", user);
        mv.addObject("stu", stu);
        return mv;

    }

//    ---------------------------------------------------------------------//
    @RequestMapping(value = "/viewpaymenthistory/{user_id}")
    public ModelAndView viewPaymentHistoryList(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/student/student_login");

        Users user = homeService.getUserById(user_id);
        Students stu = stuService.getStudentById(user.getRole_id());
        List<Payment> list = stuService.getPaymentHistoryByStudentID(user.getRole_id());
        String message = "";
        if (list == null) {
            message = "<h4 style=\"color:red\"> You hava no  Payment History. ! </h4>";
            mv.addObject("message", message);
            mv.addObject("userViewDuePayment", true);
        } else {
            mv.addObject("userClickPaymentHitsory", true);
            mv.addObject("PaymentHistoryList", list);
        }

        mv.addObject("user", user);
        mv.addObject("stu", stu);
        return mv;

    }

//    ---------------------------------------------------------------------//
    @RequestMapping(value = "/duepaymentform/{user_id}/{pm_id}")
    public ModelAndView student_Due_payment_form(
            @PathVariable int user_id,
            @PathVariable int pm_id
    ) {
        ModelAndView mv = new ModelAndView("user/student/student_login");
        Users user = homeService.getUserById(user_id);
        Students stu = stuService.getStudentById(user.getRole_id());
        List<Payment> list = stuService.getStudentPaymentDueRecord(pm_id);

        mv.addObject("userWantsToPayDue", true);
        mv.addObject("PaymentDueHistory", list);
        mv.addObject("payment", new Payment());
        mv.addObject("user", user);
        mv.addObject("stu", stu);
        return mv;

    }

//    ---------------------------------------------------------------------//
    @RequestMapping(value = "/updateduepayment/{user_id}")
    public ModelAndView update_Student_Due_payment(
            @ModelAttribute("payment") Payment payment,
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/student/student_login");
        Users user = homeService.getUserById(user_id);
        Students stu = stuService.getStudentById(user.getRole_id());
        boolean status = stuService.updateStudentDuePayment(payment);
        String message;
        if (status) {
            message = "<h4> Thank you ! <br/> Your Repayment Transaction has been done successfully</h4>";
        } else {
            message = " <h4> Sorry ! The Transaction has not been completed ."
                    + "<br/> Try Again </h4>";
        }

        mv.addObject("message", message);
        mv.addObject("payment", new Payment());
        mv.addObject("user", user);
        mv.addObject("stu", stu);
        return mv;

    }

    @RequestMapping(value = "/getschedule/{user_id}")
    public ModelAndView ScheduleOfClass(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/student/student_login");

        Users user = homeService.getUserById(user_id);
        Students stu = stuService.getStudentById(user.getRole_id());
        List<Schedule> sclist = stuService.getScheduleofClassByDeptId(stu.getDept_id());
        
        mv.addObject("ScheduleOfClass", true);
        mv.addObject("sclist", sclist);
        mv.addObject("user", user);
        mv.addObject("stu", stu);

        return mv;
    }

}
