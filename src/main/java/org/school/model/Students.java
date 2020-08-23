package org.school.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Students", catalog = "idb")
public class Students implements java.io.Serializable {

// @GeneratedValue(strategy=GenerationType.AUTO)
    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private Integer id;
    private String name;
    private String dept_id;
    private String course_name;
    private String birth_date;
    private String father_name;
    private String mother_name;
    private String address;
    private byte image;
    private String email;
    private String contact_no;
    String gender;

    public Students() {
    }

    public Students(Integer id, String name, String dept_id, String course_name, String birth_date, String father_name, String mother_name, String address, byte image, String email, String contact_no, String gender) {
        this.id = id;
        this.name = name;
        this.dept_id = dept_id;
        this.course_name = course_name;
        this.birth_date = birth_date;
        this.father_name = father_name;
        this.mother_name = mother_name;
        this.address = address;
        this.image = image;
        this.email = email;
        this.contact_no = contact_no;
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "Students{" + "id=" + id + ", name=" + name + ", dept_id=" + dept_id + ", course_name=" + course_name + ", birth_date=" + birth_date + ", father_name=" + father_name + ", mother_name=" + mother_name + ", address=" + address + ", image=" + image + ", email=" + email + ", contact_no=" + contact_no + ", gender=" + gender + '}';
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

    public String getDept_id() {
        return dept_id;
    }

    public void setDept_id(String dept_id) {
        this.dept_id = dept_id;
    }

    public String getCourse_name() {
        return course_name;
    }

    public void setCourse_name(String course_name) {
        this.course_name = course_name;
    }

    public String getBirth_date() {
        return birth_date;
    }

    public void setBirth_date(String birth_date) {
        this.birth_date = birth_date;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public byte getImage() {
        return image;
    }

    public void setImage(byte image) {
        this.image = image;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact_no() {
        return contact_no;
    }

    public void setContact_no(String contact_no) {
        this.contact_no = contact_no;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    
    
    
    
    
}
