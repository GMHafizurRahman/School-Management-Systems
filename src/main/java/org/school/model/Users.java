
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
public class Users implements Serializable {
    
    
    
    
    @Id
    @GeneratedValue(strategy=IDENTITY)
    @Column(name="id", unique=true, nullable=false)
    Integer id;
    String username;
    String password;
    String email;
    String user_role;
    Integer role_id;

    public Users() {
    }

    public Users(Integer id, String username, String password, String email, String role, Integer role_id) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.user_role = role;
        this.role_id = role_id;
    }

    @Override
    public String toString() {
        return "Users{" + "id=" + id + ", username=" + username + ", password=" + password + ", email=" + email + ", role=" + user_role + ", role_id=" + role_id + '}';
    }

    
    
    
    
    
    
    
    
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUser_role() {
        return user_role;
    }

    public void setUser_role(String user_role) {
        this.user_role = user_role;
    }



    public Integer getRole_id() {
        return role_id;
    }

    public void setRole_id(Integer role_id) {
        this.role_id = role_id;
    }
    

}
