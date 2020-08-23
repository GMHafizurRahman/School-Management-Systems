package org.school.controller;

import java.util.List;
import org.school.model.Admin;
import org.school.model.Application;
import org.school.model.Notice;
import org.school.model.Schedule;
import org.school.model.Users;
import org.school.service.AdminService;
import org.school.service.DispatchService;
import org.school.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/dispatch")
public class Dispatch_Controller {

    @Autowired
    AdminService admService;
    @Autowired
    HomeService homeService;
    @Autowired
    DispatchService dispService;

    @RequestMapping("gotonotice/{user_id}")
    public ModelAndView viewNotices(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        List<Notice> nlist = dispService.getNoticeList();
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("nlist", nlist);
        mv.addObject("gotonotice", true);
        mv.addObject("notice", new Notice());
        return mv;

    }

    @RequestMapping("gotoaddnotice/{user_id}")
    public ModelAndView gotoAddNotice(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("gotaddonoticeform", true);
        mv.addObject("notice", new Notice());
        return mv;

    }

    @PostMapping("addnotice/{user_id}")
    public ModelAndView addNotice(
            @PathVariable int user_id,
            @ModelAttribute Notice notice
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        boolean status = dispService.addNoticeToDB(notice);
        String message=null;
        if (status == true) {
        message = "<h4 style=\"color:black;\">The "+notice.getType()+" has been Added successfully</h4>";
        } else {
            message = "<h4 style=\"color:red;\">The "+notice.getType()+" Addition Procedure was failure .</h4> <br/> Try Again.";
        }
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("message", message);
        mv.addObject("gotonotice", true);
        mv.addObject("notice", new Notice());
        return mv;

    }

    @RequestMapping("gotoupdatenotice/{user_id}/{n_id}")
    public ModelAndView gotoUpdateNotice(
            @PathVariable int user_id,
            @PathVariable int n_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        Notice nd  = dispService.getNoticeByID(n_id);
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("nd"  ,  nd );
        mv.addObject("gotoupdatenoticeform", true);
        mv.addObject("notice", new Notice());
        return mv;

    }

    @PostMapping("updatenotice/{user_id}")
    public ModelAndView UpdateNotice(
            @PathVariable int user_id,
            @ModelAttribute Notice notice
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        String message=null;
        boolean status = dispService.updateNotice(notice);
        if (status == true) {
            message = "<h4 style=\"color:black;\">The "+notice.getType()+" has been updated successfully</h4>";

        } else {
            message = "<h4 style=\"color:red;\">The "+notice.getType()+" Update Procedure was failure .</h4> <br/> Try Again.";
        }
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("message", message);
        mv.addObject("gotonotice", true);
        mv.addObject("notice", new Notice());
        return mv;

    }

    @RequestMapping("findnotice/{user_id}")
    public ModelAndView findNotice(
            @PathVariable int user_id,
            @ModelAttribute Notice notice
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        int i = notice.getId();
        String t = notice.getType();
        String message = null;
        List<Notice> nlist = null;
        if ( i > 0) {
            nlist = dispService.finsNoticeByIdAndType(i, t);
        } else {
            nlist = dispService.findNoticeByType(t);
        }
       
        if (nlist != null) {
        mv.addObject("noticesearchresult", true);
        } else {
            message = "<h4><span style=\"color:red;\">Alert :</span>The " + t + "   was not found yet.</h4> <br/>";
            mv.addObject("gotonotice", true);
        }
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("nlist", nlist);
        mv.addObject("message", message);
        mv.addObject("notice", new Notice());
        return mv;

    }

    @RequestMapping("deletenotice/{user_id}/{n_id}")
    public ModelAndView deleteNotice(
            @PathVariable int user_id,
            @PathVariable int n_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        dispService.deleteNoticeById(n_id);
        List<Notice> nlist = dispService.getNoticeList();
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("nlist", nlist);
        mv.addObject("gotonotice", true);
        mv.addObject("notice", new Notice());
        return mv;

    }


    @RequestMapping("gotoinbox/{user_id}")
    public ModelAndView gotoInbox(
            @PathVariable int user_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        List<Application> aplist = dispService.getApplicationList(); 
       
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("aplist", aplist);
        mv.addObject("gotoinbox", true);
        mv.addObject("application", new Application());
        return mv;

    }


    @RequestMapping("deleteapplication/{user_id}/{a_id}")
    public ModelAndView deleteApplication(
            @PathVariable int user_id,
            @PathVariable int a_id
    ) {
        ModelAndView mv = new ModelAndView("user/admin/admin_login");
        Users user = homeService.getUserById(user_id);
        Admin admp = admService.getAdminDataById(user.getRole_id());
        dispService.deleteApplicationById(a_id);
        List<Application> aplist = dispService.getApplicationList();
        mv.addObject("user", user);
        mv.addObject("admp", admp);
        mv.addObject("aplist", aplist);
        mv.addObject("gotoinbox", true);
        mv.addObject("application", new Application());
        return mv;

    }

}
