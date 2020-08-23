
package org.school.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="payment")
public class Payment implements Serializable{

 
//@GeneratedValue(strategy=IDENTITY) 
    
@Id
@GeneratedValue(strategy=IDENTITY)
@Column(name="serial_id")  
Integer serial_id;

@Column(name="student_id")
Integer student_id;

@Column(name="btrx_id", unique = true )
String btrx_id;

@Column(name="contact_number")
Long contact_number;

@Column(name="payment_category")
String payment_category;


@Column(name="payable_amount")
Double  payable_amount;

@Column(name="paying_amount")
Double  paying_amount;

@Column(name="due_amount")
Double  due_amount;

@Column(name="p_date")
String  p_date;








    public Payment() {
    }

    public Payment(Integer serial_id, Integer student_id, String btrx_id, Long contact_number, String payment_category, Double payable_amount, Double paying_amount, Double due_amount, String p_date) {
        this.serial_id = serial_id;
        this.student_id = student_id;
        this.btrx_id = btrx_id;
        this.contact_number = contact_number;
        this.payment_category = payment_category;
        this.payable_amount = payable_amount;
        this.paying_amount = paying_amount;
        this.due_amount = due_amount;
        this.p_date = p_date;
    }

    @Override
    public String toString() {
        return "Payment{" + "serial_id=" + serial_id + ", student_id=" + student_id + ", btrx_id=" + btrx_id + ", contact_number=" + contact_number + ", payment_category=" + payment_category + ", payable_amount=" + payable_amount + ", paying_amount=" + paying_amount + ", due_amount=" + due_amount + ", p_date=" + p_date + '}';
    }

    public Integer getSerial_id() {
        return serial_id;
    }

    public void setSerial_id(Integer serial_id) {
        this.serial_id = serial_id;
    }

    public Integer getStudent_id() {
        return student_id;
    }

    public void setStudent_id(Integer student_id) {
        this.student_id = student_id;
    }

    public String getBtrx_id() {
        return btrx_id;
    }

    public void setBtrx_id(String btrx_id) {
        this.btrx_id = btrx_id;
    }

    public Long getContact_number() {
        return contact_number;
    }

    public void setContact_number(Long contact_number) {
        this.contact_number = contact_number;
    }

    public String getPayment_category() {
        return payment_category;
    }

    public void setPayment_category(String payment_category) {
        this.payment_category = payment_category;
    }

    public Double getPayable_amount() {
        return payable_amount;
    }

    public void setPayable_amount(Double payable_amount) {
        this.payable_amount = payable_amount;
    }

    public Double getPaying_amount() {
        return paying_amount;
    }

    public void setPaying_amount(Double paying_amount) {
        this.paying_amount = paying_amount;
    }

    public Double getDue_amount() {
        return due_amount;
    }

    public void setDue_amount(Double due_amount) {
        this.due_amount = due_amount;
    }

    public String getP_date() {
        return p_date;
    }

    public void setP_date(String p_date) {
        this.p_date = p_date;
    }





   

  

    



    
}
