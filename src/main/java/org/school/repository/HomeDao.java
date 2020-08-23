package org.school.repository;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.school.model.Users;
import org.school.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class HomeDao implements HomeService{

    @Autowired
    SessionFactory sesionFactory;
    
    @Override
    public Users getUserByEmail(String email) { 
        Users u= new Users();
        u.setEmail(email);
    
       
            String sql = " from Users u where u.email=:email";
            Query query = sesionFactory.getCurrentSession().createQuery(sql).setProperties(u);
            Users user = (Users) query.uniqueResult();

            return user;
    }

    @Override
    public Users getUserById(int user_id) {

        Users u= new Users();
        u.setId(user_id);
    
       
            String sql = " from Users u where u.id=:id";
            Query query = sesionFactory.getCurrentSession().createQuery(sql).setProperties(u);
            Users user = (Users) query.uniqueResult();
            return user;

    }

    @Override
    public Users getUserByRoleId(Integer id) {
     String sql= "from Users u where u.role_id="+id;
        
     Query query = sesionFactory.getCurrentSession().createQuery(sql);
     Users user  = (Users) query.list().get(0);

    return user;
    }
    


}
