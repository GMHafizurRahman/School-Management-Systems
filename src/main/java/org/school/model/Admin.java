
package org.school.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

@Table
@Entity
public class Admin implements Serializable {
    
    @Id 
    @GeneratedValue(strategy=IDENTITY)
    @Column(name="id", unique=true, nullable=false)
    Integer id;
    String name;
    String email;
    int age;
    String gender;
    String address;
    String father_name;
    String mother_name;
    String birth_date; 
    Integer contact_no;
    public Admin() {
    }

    public Admin(Integer id, String name, String email, int age, String gender, String address, String father_name, String mother_name, String birth_date, Integer contact_no) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.age = age;
        this.gender = gender;
        this.address = address;
        this.father_name = father_name;
        this.mother_name = mother_name;
        this.birth_date = birth_date;
        this.contact_no = contact_no;
    }

    @Override
    public String toString() {
        return "Admin{" + "id=" + id + ", name=" + name + ", email=" + email + ", age=" + age + ", gender=" + gender + ", address=" + address + ", father_name=" + father_name + ", mother_name=" + mother_name + ", birth_date=" + birth_date + ", contact_no=" + contact_no + '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getFather_name() {
        return father_name;
    }

    public void setFather_name(String father_name) {
        this.father_name = father_name;
    }

    public String getMother_name() {
        return mother_name;
    }

    public void setMother_name(String mother_name) {
        this.mother_name = mother_name;
    }

    public String getBirth_date() {
        return birth_date;
    }

    public void setBirth_date(String birth_date) {
        this.birth_date = birth_date;
    }

    public Integer getContact_no() {
        return contact_no;
    }

    public void setContact_no(Integer contact_no) {
        this.contact_no = contact_no;
    }

    
}
