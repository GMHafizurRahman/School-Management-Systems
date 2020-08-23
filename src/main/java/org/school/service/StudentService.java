
package org.school.service;

import java.util.ArrayList;
import java.util.List;
import org.school.model.Admin;
import org.school.model.Application;
import org.school.model.Payment;
import org.school.model.Schedule;
import org.school.model.Students;
import org.school.model.Users;


import org.springframework.stereotype.Service;

@Service
public interface StudentService {

 

  public List<Students> getMyprofile();
    
  public boolean getPayment(Payment payment) ;

  public boolean submitApplication(Application application);

  public List<Application> getApplictionList();

  public void removeAppliction(int id);

  public List<Payment> getDuePaymentListByStudentID(int id);

  public List<Payment> getPaymentHistoryByStudentID(int id);

  public List<Payment> getStudentPaymentDueRecord(int id);

    public boolean updateStudentDuePayment(Payment payment);

    public List<Students> getStudentDataById(Integer i);

    public boolean addStudentToUserTable(Users reg_data);

    public Students getStudentById(Integer role_id);

    public boolean updateStudent(Students student);

    public boolean updateUser(Users user1);

    public List<Application> getApplictionListByStudentID(Integer role_id);

    public List<Schedule> getScheduleofClassByDeptId(String dept_id);

 

   


}