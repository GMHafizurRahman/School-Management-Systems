
package org.school.service;

import java.util.List;
import org.school.model.Admin;
import org.school.model.Department;
import org.school.model.Payment;
import org.school.model.Schedule;
import org.school.model.Students;
import org.school.model.Teacher;
import org.school.model.Users;
import org.springframework.stereotype.Service;

@Service
public interface AdminService { 

    public Admin getAdminDataById(Integer i);

    public boolean addAdminToUserTable(Users reg_data);

    public void updateUsers(Users user);

    public void updateAdmin(Admin admin);

    public List<Admin> getAdminList();

    public List<Users> getUsersList();

    public Admin addAdminToDB(Admin admin1);

    public void deleteUserById(int delete_id);

    public void deleteAdminById(int delete_id);

    public List<Payment> getPaymentsHistory();

    public List<Payment> getDueAmountListById(int id);

    public Payment getPaymentDueRecordBySerialId(int serial_id);

    public boolean updateDuePayment(Payment dupmt);

    public boolean addPaymentToDB(Payment pmt);

    public List<Teacher> getTeacherList();

    public boolean addTeacherToDB(Teacher teacher);

    public Teacher findTeacherByID(int teacher_id);

    public boolean updateTeacherToDB(Teacher teacher);

    public void deleteTeacherById(int t_id);

    public boolean addStudentToDB(Students student);

    public Students findStudentByID(int stu_id);

    public boolean updateStudentToDB(Students stu);

    public void deleteStudentById(int t_id);

    public List<Students> getStudentList();

    public List<Department> getDepartmentList();

    public Department findDepartmentByID(int dep_id);

    public boolean addDepartmentToDB(Department department);

    public boolean updateDepartmentToDB(Department dep);

    public void deleteDepartmentById(int d_id);

    public List<Schedule> getScheduleList();

    public Schedule findScheduleByID(int cdl_id);

    public boolean addScheduleToDB(Schedule schedule);

    public boolean updateScheduleToDB(Schedule cdl);

    public void deleteScheduleById(int cdl_id);

    public Schedule findScheduleByDepID(int dep_id);


    
}
