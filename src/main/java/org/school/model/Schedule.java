package org.school.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Schedule implements Serializable {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id")
    int id;
    int dept_id;
    int course_id;
    String course_title;
    String room_no;
    String teacher;
    String class_schedule;
    String  days;

    public Schedule() {
    }

    public Schedule(int id, int dept_id, int course_id, String course_title, String room_no, String teacher, String class_schedule, String days) {
        this.id = id;
        this.dept_id = dept_id;
        this.course_id = course_id;
        this.course_title = course_title;
        this.room_no = room_no;
        this.teacher = teacher;
        this.class_schedule = class_schedule;
        this.days = days;
    }

    @Override
    public String toString() {
        return "Schedule{" + "id=" + id + ", dept_id=" + dept_id + ", course_id=" + course_id + ", course_title=" + course_title + ", room_no=" + room_no + ", teacher=" + teacher + ", class_schedule=" + class_schedule + ", days=" + days + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public String getCourse_title() {
        return course_title;
    }

    public void setCourse_title(String course_title) {
        this.course_title = course_title;
    }

    public String getRoom_no() {
        return room_no;
    }

    public void setRoom_no(String room_no) {
        this.room_no = room_no;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getClass_schedule() {
        return class_schedule;
    }

    public void setClass_schedule(String class_time) {
        this.class_schedule = class_time;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }



}
