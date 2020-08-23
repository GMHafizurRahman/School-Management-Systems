package org.school.repository;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.school.model.Admin;
import org.school.model.Teacher;
import org.school.model.Users;
import org.school.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class TeacherDao implements TeacherService {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Teacher getTeacherDataById(Integer i) {

        String sql      = "from Teacher t where t.id="+i;
        Query query     = sessionFactory.getCurrentSession().createQuery(sql);
        Teacher teacher = (Teacher) query.list().get(0);
        
        return teacher;
    }

    @Override
    public boolean addTeacherToUserTable(Users reg_data) {
        int id = reg_data.getRole_id();
        String email = reg_data.getEmail();
        Teacher s1 = getTeacherDataById(id);
        reg_data.setUsername(s1.getName());
        s1.setEmail(email);
         Object merge = sessionFactory.getCurrentSession().merge(s1);
        System.out.println(merge.toString());
        int i = (int) sessionFactory.getCurrentSession().save(reg_data);

        return (i > 0);

    }

}
