package org.school.controller;

import java.util.Arrays;
import java.util.List;
import org.school.model.Admin;
import org.school.model.Department;
import org.school.model.Payment;
import org.school.model.Schedule;
import org.school.model.Students;
import org.school.model.Teacher;
import org.school.model.Users;
import org.school.service.AdminService;
import org.school.service.HomeService;
import org.school.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/adm")
public class AdminController {

    @Autowired
    AdminService admService;
    @Autowired
    HomeService homeService;
    @Autowired
    StudentService stuService;

    @RequestMapping("/viewprofile/{user_id}/{role_id}")
    public ModelAndView admProfile(
            @PathVariable("user_id") int user_id,
            @PathVariable("role_id") int role_id
    //   @ModelAttribute("user") Users u2
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
//   if(u2 != null){
//   
//       System.out.println(" Model Attribute found !");
//       System.out.println("Model Attribute username = "+u2.getUsername());
//   }
        Users user = homeService.getUserById(user_id);
        Admin admProfile = admService.getAdminDataById(role_id);
        System.out.println("Admin user_id=" + user_id);
        System.out.println("Admin role_id=" + role_id);

        System.out.println("");
//      List<Users> usList = homeService
        mv.addObject("user", user);
        mv.addObject("admp", admProfile);
        mv.addObject("userClickAdminProfile", true);
//        System.out.println(Arrays.asList(user));

        return mv;
    }

    @RequestMapping("/gotoupdateuser/{user_id}")
    public ModelAndView admProfile(@PathVariable int user_id) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        mv.addObject("gotoupdateuser", true);
        Users user = homeService.getUserById(user_id);
        mv.addObject("user", user);
        mv.addObject("users", new Users());

        return mv;
    }

    @RequestMapping(value = "/updateuser", method = RequestMethod.POST)
    public ModelAndView updateUser(
            @ModelAttribute() Users user
    ) {
        admService.updateUsers(user);
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Admin admin = admService.getAdminDataById(user.getRole_id());

        mv.addObject("user", user);
        mv.addObject("admp", admin);
        mv.addObject("userClickAdminProfile", true);

        return mv;
    }

    @RequestMapping("/gotoupdateadmin/{user_id}")
    public ModelAndView admProfile3(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        mv.addObject("gotoupdateadmin", true);
        Users user = homeService.getUserById(user_id);
        Admin admin = admService.getAdminDataById(user.getRole_id());
        mv.addObject("user", user);
        mv.addObject("admp", admin);
        mv.addObject("users", new Users());
        mv.addObject("admin", new Admin());

        return mv;
    }

    @RequestMapping(value = "/updateadmin/{user_id}", method = RequestMethod.POST)
    public ModelAndView upadteAdmin(
            @ModelAttribute("admin") Admin admin,
            @PathVariable("user_id") int id
    ) {

//         admin.setBirth_date(admin.getBirth_date().toLowerCase());
        admService.updateAdmin(admin);
        Users user1 = homeService.getUserById(id);
        user1.setEmail(admin.getEmail());
        admService.updateUsers(user1);
        Users user = homeService.getUserById(id);
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Admin admp = admService.getAdminDataById(user.getRole_id());

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("userClickAdminProfile", true);

        return mv;
    }

    @RequestMapping(value = "/viewalladmin/{user_id}")
    public ModelAndView viewAllAdmin(
            @PathVariable("user_id") int id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");

        Users user = homeService.getUserById(id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        List<Admin> aList = admService.getAdminList();
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("aList", aList);

        mv.addObject("viewAllAdmin", true);

        return mv;
    }

    @RequestMapping(value = "/viewallusers/{user_id}")
    public ModelAndView viewAllUsers(
            @PathVariable("user_id") int id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");

        Users user = homeService.getUserById(id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        List<Users> uList = admService.getUsersList();
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("uList", uList);

        mv.addObject("viewAllUsers", true);

        return mv;
    }

    @RequestMapping("/gotoaddadmin/{user_id}")
    public ModelAndView gotoAddAdmin(
            @PathVariable int user_id) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        mv.addObject("gotoAddAdmin", true);
        Users user = homeService.getUserById(user_id);
        Admin admin = admService.getAdminDataById(user.getRole_id());
        mv.addObject("user", user);
        mv.addObject("admp", admin);
        mv.addObject("users", new Users());
        mv.addObject("admin", new Admin());

        return mv;
    }

    @RequestMapping("/addadmin/{user_id}")
    public ModelAndView addAdminToDB(
            @ModelAttribute("admin") Admin admin1,
            @PathVariable int user_id) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");

        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        Admin status = admService.addAdminToDB(admin1);
        String message;
        if (status.getId() > 0) {
            message = "Add Admin was successful.";
        } else {
            message = "Add Admin was failure";
        }

        mv.addObject("AddAdminSuccess", true);
        mv.addObject("status", status.toString());
        mv.addObject("message", message);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("users", new Users());
        mv.addObject("admin", new Admin());

        return mv;
    }

    @RequestMapping("/deleteuser/{user_id}/{delete_id}")
    public ModelAndView deleteUser(
            @PathVariable int user_id,
            @PathVariable int delete_id) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");

        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        admService.deleteUserById(delete_id);
        List<Users> uList = admService.getUsersList();
        mv.addObject("viewAllUsers", true);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("uList", uList);
        return mv;
    }

    @RequestMapping("/gotoupdateadmin/{user_id}/{update_id}")
    public ModelAndView updateAnAdmin(
            @PathVariable int user_id,
            @PathVariable int update_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");

        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        Admin uadm = admService.getAdminDataById(update_id);

        mv.addObject("adminUpdateForm", true);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("uadm", uadm);
        mv.addObject("admin", new Admin());
        return mv;
    }

    @RequestMapping(value = "/updateAlladmin/{user_id}", method = RequestMethod.POST)
    public ModelAndView updateAlladmin(
            @ModelAttribute("admin") Admin admin,
            @PathVariable int user_id) {

        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        admService.updateAdmin(admin);
        Users user1 = homeService.getUserByRoleId(admin.getId());
        user1.setEmail(admin.getEmail());
        admService.updateUsers(user1);
        List<Admin> aList = admService.getAdminList();
        ModelAndView mv = new ModelAndView("user/admin/admin_login");

        mv.addObject("aList", aList);

        mv.addObject("viewAllAdmin", true);
        mv.addObject("user", user);
        mv.addObject("admp", admp);

        return mv;

    }

    @RequestMapping("/deleteadmin/{user_id}/{delete_id}")
    public ModelAndView deleteAdmin(
            @PathVariable int user_id,
            @PathVariable int delete_id) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");

        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        admService.deleteAdminById(delete_id);
//        Users user1 = homeService.getUserByRoleId(delete_id);
//                      admService.deleteUserById(user1.getId());
        List<Admin> aList = admService.getAdminList();
        mv.addObject("viewAllAdmin", true);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("aList", aList);
        return mv;
    }

    @RequestMapping(value = "/viewpayments/{user_id}")
    public ModelAndView viewPaymentHistoryList(
            @PathVariable int user_id
    ) {
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        List<Payment> plist = admService.getPaymentsHistory();
        double Total = 0;
        double due = 0;
        for (int i = 0; i < plist.size(); i++) {
            Payment p = plist.get(i);
            due += p.getDue_amount();
            Total += p.getPaying_amount();
        }
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("Adminviewspayments", true);
        mv.addObject("pList", plist);
        mv.addObject("Total", Total);
        mv.addObject("Due", due);
        mv.addObject("dp", new Payment());

        return mv;

    }

    @RequestMapping(value = "/findstudentdueamount/{user_id}", method = RequestMethod.POST)
    public ModelAndView findStudentDuAmount(
            @ModelAttribute("dp") Payment dp,
            @PathVariable int user_id
    ) {
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        int id = dp.getStudent_id();
        List<Payment> duelist = admService.getDueAmountListById(id);

        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        mv.addObject("findStudentDuAmount", true);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("duelist", duelist);

        return mv;
    }

    @RequestMapping(value = "duepaymentform/{user_id}/{serial_id}")
    public ModelAndView duePaymentForm(
            @PathVariable int user_id,
            @PathVariable int serial_id
    ) {

        Payment duelist = admService.getPaymentDueRecordBySerialId(serial_id);
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        mv.addObject("duePaymentForm", true);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("duelist", duelist);
        mv.addObject("payment", new Payment());
        return mv;
    }

    @PostMapping(value = "updateduepayment/{user_id}")
    public ModelAndView updateDuePayment(
            @ModelAttribute Payment dupmt,
            @PathVariable int user_id
    ) {

        boolean status = admService.updateDuePayment(dupmt);
        String message;
        if (status) {
            message = "<h4> Thank you ! <br/> Your Repayment Transaction has been done successfully</h4>";
        } else {
            message = " <h4> Sorry ! the transaction has not been completed ."
                    + "<br/> Try Again </h4>";
        }

        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
//        mv.addObject("duePaymentForm", true);
        mv.addObject("message", message);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        return mv;
    }

    @RequestMapping(value = "/receiveapayment/{user_id}")
    public ModelAndView receivePaymentForm(
            @PathVariable int user_id
    ) {

        ModelAndView mv = new ModelAndView("user/admin/admin_login");

        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        mv.addObject("receivePaymentForm", true);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("payment", new Payment());
        return mv;
    }

    @PostMapping(value = "/receivepayment/{user_id}")
    public ModelAndView receivePayment(
            @PathVariable int user_id,
            @ModelAttribute Payment pmt
    ) {
        boolean status = admService.addPaymentToDB(pmt);
        String message;
        if (status) {
            message = "<h4> Thank you ! <br/> Your Payment Transaction has been done successfully</h4>";
        } else {
            message = " <h4> Sorry ! the transaction has not been completed ."
                    + "<br/> Try Again </h4>";
        }

        ModelAndView mv = new ModelAndView("user/admin/admin_login");

        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
//        mv.addObject("receivePaymentForm", true);
        mv.addObject("message", message);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("payment", new Payment());
        return mv;
    }

    @RequestMapping(value = "/gototeachers/{user_id}")
    public ModelAndView gotoTeachers(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");

        List<Teacher> tList = admService.getTeacherList();

        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        mv.addObject("gototeachers", true);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("tList", tList);
        mv.addObject("teacher", new Teacher());
        return mv;
    }

    @RequestMapping(value = "/gotoaddteacher/{user_id}")
    public ModelAndView gotoAddTeacher(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("AddTeacherForm", true);
        mv.addObject("teacher", new Teacher());

        return mv;
    }

    @RequestMapping(value = "/gotoupdateteacher/{user_id}/{teacher_id}")
    public ModelAndView gotoUpdateTeacher(
            @PathVariable int user_id,
            @PathVariable int teacher_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        Teacher td = admService.findTeacherByID(teacher_id);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("TeacherUpdateForm", true);
        mv.addObject("teacher", new Teacher());
        mv.addObject("td", td);

        return mv;
    }

    @RequestMapping(value = "/addteacher/{user_id}")
    public ModelAndView addTeacherToDB(
            @PathVariable int user_id,
            @ModelAttribute Teacher teacher
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        String message;
        boolean status = admService.addTeacherToDB(teacher);
        if (status) {
            message = "<h4>The Teacher has been added successfully !</h4>";

        } else {
            message = "<h4>The Teacher Addition was failure !</h4> <br/> Try Again.";
        }
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("message", message);
        mv.addObject("gototeachers", true);
        mv.addObject("teacher", new Teacher());

        return mv;
    }

    @RequestMapping(value = "/updateteacher/{user_id}")
    public ModelAndView updateTeacher(
            @PathVariable int user_id,
            @ModelAttribute Teacher tchr
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        String message;
        boolean status = admService.updateTeacherToDB(tchr);
        if (status == true) {
            message = "<h4>The Teacher has been updated successfully</h4>";

        } else {
            message = "<h4>The Teacher Update was failure .</h4> <br/> Try Again.";
        }
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("message", message);
        mv.addObject("teacher", new Teacher());
        mv.addObject("gototeachers", true);

        return mv;
    }

    @RequestMapping(value = "/deleteteacher/{user_id}/{t_id}")
    public ModelAndView deleteTeacherById(
            @PathVariable int user_id,
            @PathVariable int t_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        admService.deleteTeacherById(t_id);
        List<Teacher> tList = admService.getTeacherList();

        mv.addObject("gototeachers", true);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("tList", tList);
        mv.addObject("teacher", new Teacher());
        return mv;
    }

//    findateacher/${user.id}"
    @RequestMapping(value = "/findateacher/{user_id}")
    public ModelAndView find_A_Teacher(
            @PathVariable int user_id,
            @ModelAttribute Teacher tcr
    ) {
        int t_id = tcr.getId();
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        Teacher td = admService.findTeacherByID(t_id);
        String message = "";
        if (td != null) {
            mv.addObject("TeacherSearchResult", true);
        } else {
            message = "<h4><span style=\"color:red;\">Alert :</span>The Teacher ID :" + t_id + " was not found yet.</h4> <br/>";
            mv.addObject("gototeachers", true);
        }

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("td", td);
        mv.addObject("message", message);

        mv.addObject("teacher", new Teacher());
        return mv;
    }

//   ################################################################################### 
    @RequestMapping(value = "/gotostudents/{user_id}")
    public ModelAndView gotoStudents(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");

        List<Students> sList = admService.getStudentList();

        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        mv.addObject("gotostudents", true);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("sList", sList);
        mv.addObject("student", new Students());
        return mv;
    }

    @RequestMapping(value = "/gotoaddstudent/{user_id}")
    public ModelAndView gotoAddStudent(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("AddStudentForm", true);
        mv.addObject("student", new Students());

        return mv;
    }

    @RequestMapping(value = "/gotoupdatestudent/{user_id}/{stu_id}")
    public ModelAndView gotoUpdateStudent(
            @PathVariable int user_id,
            @PathVariable int stu_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        Students sd = admService.findStudentByID(stu_id);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("StudentUpdateForm", true);
        mv.addObject("student", new Students());
        mv.addObject("sd", sd);

        return mv;
    }

    @PostMapping(value = "/addstudent/{user_id}")
    public ModelAndView addStudentToDB(
            @PathVariable int user_id,
            @ModelAttribute Students student
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        String message;
        boolean status = admService.addStudentToDB(student);
        if (status) {
            message = "<h4>The Student has been added successfully !</h4>";

        } else {
            message = "<h4 style=\"color:red;\">The Student Addition was failure !</h4> <br/> Try Again.";
        }
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("message", message);
        mv.addObject("gotostudents", true);
        mv.addObject("student", new Students());

        return mv;
    }

    @RequestMapping(value = "/updatestudent/{user_id}")
    public ModelAndView updateStudent(
            @PathVariable int user_id,
            @ModelAttribute Students stu
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        String message;
        boolean status = admService.updateStudentToDB(stu);
        if (status == true) {
            message = "<h4 style=\"color:black;\">The Student has been updated successfully</h4>";

        } else {
            message = "<h4 style=\"color:red;\">The Student Update Procedure was failure .</h4> <br/> Try Again.";
        }
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("message", message);
        mv.addObject("gotostudents", true);
        mv.addObject("student", new Students());

        return mv;
    }

    @RequestMapping(value = "/deletestudent/{user_id}/{t_id}")
    public ModelAndView deleteStudentById(
            @PathVariable int user_id,
            @PathVariable int t_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        admService.deleteStudentById(t_id);
        List<Students> sList = admService.getStudentList();

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("sList", sList);
        mv.addObject("gotostudents", true);
        mv.addObject("student", new Students());
        return mv;
    }

//    findateacher/${user.id}"
    @RequestMapping(value = "/findastudent/{user_id}")
    public ModelAndView find_A_Student(
            @PathVariable int user_id,
            @ModelAttribute Students stu
    ) {
        int s_id = stu.getId();
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        Students sd = admService.findStudentByID(s_id);
        String message = "";
        if (sd != null) {
            mv.addObject("StudentSearchResult", true);
        } else {
            message = "<h4><span style=\"color:red;\">Alert :</span>The Student ID :" + s_id + " was not found yet.</h4> <br/>";
            mv.addObject("gotostudents", true);
        }

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("sd", sd);
        mv.addObject("message", message);
        mv.addObject("student", new Students());
        return mv;
    }

// ###############################################################################   
    @RequestMapping(value = "/gotodepartments/{user_id}")
    public ModelAndView gotoDepartments(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        List<Department> dlist = admService.getDepartmentList();

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("dlist", dlist);
        mv.addObject("department", new Department());
        mv.addObject("gotodepartments", true);

        return mv;
    }

    @RequestMapping(value = "/gotoadddepartment/{user_id}")
    public ModelAndView gotoAddDepartment(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("AddDepartmentForm", true);
        mv.addObject("department", new Department());

        return mv;
    }

    @RequestMapping(value = "/gotoupdatedepartment/{user_id}/{dep_id}")
    public ModelAndView gotoUpdateDepartment(
            @PathVariable int user_id,
            @PathVariable int dep_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        Department dd = admService.findDepartmentByID(dep_id);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("DepartmentUpdateForm", true);
        mv.addObject("department", new Department());
        mv.addObject("dd", dd);

        return mv;
    }

    @PostMapping(value = "/adddepartment/{user_id}")
    public ModelAndView addDepartmentToDB(
            @PathVariable int user_id,
            @ModelAttribute Department department
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        String message;
        boolean status = admService.addDepartmentToDB(department);
        if (status) {
            message = "<h4>The Department has been added successfully !</h4>";

        } else {
            message = "<h4 style=\"color:red;\">The Department Addition was failure !</h4> <br/> Try Again.";
        }
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("message", message);
        mv.addObject("gotodepartments", true);
        mv.addObject("department", new Department());

        return mv;
    }

    @PostMapping(value = "/updatedepartment/{user_id}")
    public ModelAndView updateDepartment(
            @PathVariable int user_id,
            @ModelAttribute Department dep
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        String message;
        boolean status = admService.updateDepartmentToDB(dep);
        if (status == true) {
            message = "<h4 style=\"color:black;\">The Department has been updated successfully</h4>";

        } else {
            message = "<h4 style=\"color:red;\">The Department Update Procedure was failure .</h4> <br/> Try Again.";
        }
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("message", message);
        mv.addObject("gotodepartments", true);
        mv.addObject("department", new Department());

        return mv;
    }

    @RequestMapping(value = "/deletedepartment/{user_id}/{d_id}")
    public ModelAndView deleteDepartmentById(
            @PathVariable int user_id,
            @PathVariable int d_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        admService.deleteDepartmentById(d_id);
        List<Department> dlist = admService.getDepartmentList();

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("dlist", dlist);
        mv.addObject("gotodepartments", true);
        mv.addObject("department", new Department());
        return mv;
    }

//    findateacher/${user.id}"
    @RequestMapping(value = "/findadepartment/{user_id}")
    public ModelAndView find_A_Department(
            @PathVariable int user_id,
            @ModelAttribute Department dep
    ) {
        int d_id = dep.getId();
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        Department dd = admService.findDepartmentByID(d_id);
        String message = "";
        if (dd != null) {
            mv.addObject("DepartmentSearchResult", true);
        } else {
            message = "<h4><span style=\"color:red;\">Alert :</span>The Department ID :" + d_id + " was not found yet.</h4> <br/>";
            mv.addObject("gotodepartments", true);
        }

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("dd", dd);
        mv.addObject("message", message);
        mv.addObject("department", new Department());
        return mv;
    }
// ###############################################################################   
    @RequestMapping(value = "/gotoschedule/{user_id}")
    public ModelAndView gotoSchedule(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        List<Schedule> clist = admService.getScheduleList();

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("clist", clist);
        mv.addObject("schedule", new Schedule());
        mv.addObject("gotoschedule", true);

        return mv;
    }

 @RequestMapping(value = "/gotoaddschedule/{user_id}")
    public ModelAndView gotoAddSchedule(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("AddScheduleForm", true);
        mv.addObject("schedule", new Schedule());

        return mv;
    }

    @RequestMapping(value = "/gotoupdateschedule/{user_id}/{cdl_id}")
    public ModelAndView gotoUpdateSchedule(
            @PathVariable int user_id,
            @PathVariable int cdl_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        Schedule cd = admService.findScheduleByID(cdl_id);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("ScheduleUpdateForm", true);
        mv.addObject("schedule", new Schedule());
        mv.addObject("cd", cd);

        return mv;
    }

    @PostMapping(value = "/addschedule/{user_id}")
    public ModelAndView addScheduleToDB(
            @PathVariable int user_id,
            @ModelAttribute Schedule schedule
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        String message;
        boolean status = admService.addScheduleToDB(schedule);
        if (status) {
            message = "<h4>The Schedule has been added successfully !</h4>";

        } else {
            message = "<h4 style=\"color:red;\">The Schedule Addition was failure !</h4> <br/> Try Again.";
        }
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("message", message);
        mv.addObject("gotoschedule", true);
        mv.addObject("schedule", new Schedule());

        return mv;
    }

    @PostMapping(value = "/updateschedule/{user_id}")
    public ModelAndView updateSchedule(
            @PathVariable int user_id,
            @ModelAttribute Schedule cdl
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        String message;
        boolean status = admService.updateScheduleToDB(cdl);
        if (status == true) {
            message = "<h4 style=\"color:black;\">The Schedule has been updated successfully</h4>";

        } else {
            message = "<h4 style=\"color:red;\">The Schedule Update Procedure was failure .</h4> <br/> Try Again.";
        }
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("message", message);
        mv.addObject("gotoschedule", true);
        mv.addObject("schedule", new Schedule());

        return mv;
    }

    @RequestMapping(value = "/deleteschedule/{user_id}/{cdl_id}")
    public ModelAndView deleteScheduleById(
            @PathVariable int user_id,
            @PathVariable int cdl_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        admService.deleteScheduleById(cdl_id);
        List<Schedule> clist = admService.getScheduleList();

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("clist", clist);
        mv.addObject("gotoschedule", true);
        mv.addObject("schedule", new Schedule());
        return mv;
    }

//    findateacher/${user.id}"
    @RequestMapping(value = "/findschedule/{user_id}")
    public ModelAndView find_A_Schedule(
            @PathVariable int user_id,
            @ModelAttribute Schedule cdl
    ) {
        int dep_id = cdl.getDept_id();
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        Schedule sch = admService.findScheduleByDepID(dep_id);
        String message = "";
        if (sch != null) {
            mv.addObject("ScheduleSearchResult", true);
        } else {
            message = "<h4><span style=\"color:red;\">Alert :</span>The Schedule for Department ID :" + dep_id + " was not found yet.</h4> <br/>";
            mv.addObject("gotoschedule", true);
        }

        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("cd", sch);
        mv.addObject("message", message);
        mv.addObject("schedule", new Schedule());
        return mv;
    }

}
