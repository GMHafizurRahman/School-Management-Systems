
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
public class Notice implements Serializable {
    
    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id")
    int     id;
    String type;
    String title;
    String subject;
    String body;
    String p_date;

    public Notice() {
    }

    public Notice(int id, String type, String title, String subject, String body, String p_date) {
        this.id = id;
        this.type = type;
        this.title = title;
        this.subject = subject;
        this.body = body;
        this.p_date = p_date;
    }

    @Override
    public String toString() {
        return "Notice{" + "id=" + id + ", type=" + type + ", title=" + title + ", subject=" + subject + ", body=" + body + ", p_date=" + p_date + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getP_date() {
        return p_date;
    }

    public void setP_date(String p_date) {
        this.p_date = p_date;
    }


}
