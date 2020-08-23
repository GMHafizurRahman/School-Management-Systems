package org.school.controller;

import java.util.List;
import javax.validation.Valid;
import org.school.model.Admin;
import org.school.model.Students;
import org.school.model.Teacher;
import org.school.model.Users;
import org.school.service.AdminService;
import org.school.service.HomeService;
import org.school.service.StudentService;
import org.school.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/home")
public class HomeController {

    @Autowired
    HomeService homeService;
    @Autowired
    StudentService stuService;
    @Autowired
    TeacherService teaService;
    @Autowired
    AdminService admService;

    @RequestMapping(value = {"", "/", "/home", "/index"})
    public String index(Model m) {
        m.addAttribute("a", "a");
        m.addAttribute("userClickIntroduction", true);
        return "index";
    }

    @RequestMapping(value = {"/gotologin"})
    public ModelAndView gotoLogin() {
        ModelAndView mv = new ModelAndView("login/login");
        mv.addObject("user", new Users());
        mv.addObject("userClickLogin", true);
        return mv;
    }

    @RequestMapping(value = {"/admin_login"})
    public String adminlogin(Model m) {
        m.addAttribute("a", "a2");
        return "user/admin/admin_login";
    }

    @RequestMapping(value = {"/teacher_login"})
    public String teacherlogin(Model m) {
        m.addAttribute("a", "a2");
        return "user/teacher/teacher_login";
    }

    @RequestMapping(value = {"/student_login"})
    public String studentlogin(Model m) {
        m.addAttribute("a", "a2");
        return "user/student/student_login";
    }

    @RequestMapping(value = "/introduction")
    public ModelAndView introDuction() {
        ModelAndView mv = new ModelAndView("index");
//	             mv.addObject("title", "All Products");
        mv.addObject("userClickIntroduction", true);

        return mv;
    }

    @RequestMapping(value = "/whatwedo")
    public ModelAndView whatWeDo() {
        ModelAndView mv = new ModelAndView("index");
//	             mv.addObject("title", "All Products");
        mv.addObject("userClickWhatWeDo", true);

        return mv;
    }

    @RequestMapping(value = "/outcome")
    public ModelAndView showOutcome() {
        ModelAndView mv = new ModelAndView("index");

        mv.addObject("userClickOutcome", true);

        return mv;
    }

    @RequestMapping(value = "/futureplan")
    public ModelAndView showFuturePlan() {
        ModelAndView mv = new ModelAndView("index");

        mv.addObject("userClickFuturePlan", true);

        return mv;
    }

    @RequestMapping(value = "/evaluation")
    public ModelAndView showEvaluation() {
        ModelAndView mv = new ModelAndView("index");

        mv.addObject("userClickEvaluation", true);

        return mv;
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView userLogin(@ModelAttribute("user") Users user1) {
        ModelAndView mv = new ModelAndView("login/login");
        mv.addObject("userClickLogin", true);
        String email = user1.getEmail();
        String paswrd = user1.getPassword();
        Users user = homeService.getUserByEmail(email);

        
                System.out.println("function outside called"); 
                System.out.println(user);
        if ( user != null ) {

           System.out.println("function outside password was called");
            if (paswrd.equals( user.getPassword())) {
                System.out.println("function inside called");
                  String role = user.getUser_role();
                
                switch (role) {
                    case "student":
                        mv = new ModelAndView("user/student/student_login");
                        mv.addObject("user", user);
                        return mv;
                    case "admin":
                        mv = new ModelAndView("user/admin/admin_login");
                        mv.addObject("user", user);
                        return mv;
                    case "teacher":
                        mv = new ModelAndView("user/teacher/teacher_login");
                        mv.addObject("user", user);
                        return mv;
                    default:
                        break;
                }

            } else {
                mv.addObject("message", "Access denied ! Invalid Username or Password.");
                mv.addObject("user", new Users());
                return mv;
            }
        } else {
        }
        mv.addObject("user", new Users());

        return mv;
    }

    @GetMapping(value = "/register")
    public ModelAndView userGetRegister() {
        ModelAndView mv = new ModelAndView("login/login");
        mv.addObject("userClickRegister", true);
        mv.addObject("user2", new Users());

        return mv;
    }
    
    @PostMapping(value = "/register")
    public ModelAndView userPostRegister(@ModelAttribute("user2") Users reg_data ) {
        ModelAndView mv = new ModelAndView("login/login");
        reg_data.setEmail(reg_data.getEmail().toLowerCase());        

        Integer i     = reg_data.getRole_id(); 
        String  role  = reg_data.getUser_role();
        
    if( null != role)switch (role) {
            case "admin":
                Admin adm = admService.getAdminDataById(i);
                if(adm != null){                                       
                    boolean b = admService.addAdminToUserTable(reg_data);
                    if( b == true ){
                        mv.addObject("userRegisterSuccess", true);
                        mv.addObject("success", "Thank you! You have successfully signed up.<br/>Now go to <a href=\"gotologin\">login</a>");
                    }
                } else{
                    mv.addObject("error", "Dear Admin, Your Data is not in the Server yet. ");
                    
                }       break;
            case "teacher":
                Teacher teacher = teaService.getTeacherDataById(i);
                if(teacher != null){
                    
                    
                    boolean b = teaService.addTeacherToUserTable(reg_data);
                    if( b == true ){
                        mv.addObject("userRegisterSuccess", true);
                        mv.addObject("success", "Thank you! You have successfully signed up.<br/>Now go to <a href=\"gotologin\">login</a>");
                    }
                } else{
                    mv.addObject("error", "Dear Teacher, Your Data is not in the Server yet. ");
                    
                }       break;
            case "student":
                List<Students> stuList = stuService.getStudentDataById(i);
                if(stuList != null){
                    
                    
                    boolean b = stuService.addStudentToUserTable(reg_data);
                    if( b == true ){
                        mv.addObject("userRegisterSuccess", true);
                        mv.addObject("success", "Thank you! You have successfully signed up.<br/>Now go to <a href=\"gotologin\">login</a>");
                    }
                } else{
                    mv.addObject("error", "Dear Student, Your Data is not in the Server yet. ");
                    
                }       break;
            default:
                break;
        }     
        return mv;
    }

}
