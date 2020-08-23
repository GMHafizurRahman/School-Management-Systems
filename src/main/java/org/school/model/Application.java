
package org.school.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="application")
public class Application implements Serializable{
    @Id
    @GeneratedValue(strategy=IDENTITY)
    @Column(name="a_id")
    Integer a_id;
    Integer student_id;
    String email;
    String application_body;
    String a_date;
    String subject;

    
    
    
    
    public Application() {
    }

    @Override
    public String toString() {
        return "Application{" + "a_id=" + a_id + ", student_id=" + student_id + ", email=" + email + ", application_body=" + application_body + ", a_date=" + a_date + ", subject=" + subject + '}';
    }

    
    
    public Application(Integer a_id, Integer student_id, String email, String application_body, String a_date, String subject) {
        this.a_id = a_id;
        this.student_id = student_id;
        this.email = email;
        this.application_body = application_body;
        this.a_date = a_date;
        this.subject = subject;
    }

    public Integer getA_id() {
        return a_id;
    }

    public void setA_id(Integer a_id) {
        this.a_id = a_id;
    }

    public Integer getStudent_id() {
        return student_id;
    }

    public void setStudent_id(Integer student_id) {
        this.student_id = student_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getApplication_body() {
        return application_body;
    }

    public void setApplication_body(String application_body) {
        this.application_body = application_body;
    }

    public String getA_date() {
        return a_date;
    }

    public void setA_date(String a_date) {
        this.a_date = a_date;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
    
    
    
    
    
}
