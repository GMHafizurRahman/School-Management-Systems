
package org.school.service;

import java.util.List;
import org.school.model.Students;
import org.school.model.Teacher;
import org.school.model.Users;
import org.springframework.stereotype.Service;

@Service
public interface TeacherService {

    public Teacher getTeacherDataById(Integer i);

    public boolean addTeacherToUserTable(Users reg_data);
    
}
