package com.socialnetwork.vywatch.Model;


import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
@Entity
@Table(name="user")
@EntityListeners(AuditingEntityListener.class)
public class User {

    
    @Id
    private int id;
    private String pseudo;
    private String lastname;
    private String firstname;
    private Date dateBirth;
    private String email;
    private String password;
    private boolean firstconnection;
    private String sexe;

    public int getId() {
        return id;
    }

    public void setId(int id_user) {
        this.id = id_user;
    }

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public Date getDateBirth() {
        return dateBirth;
    }

    public void setDateBirth(Date dateBirth) {
        this.dateBirth = dateBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isFirstconnection() {
        return firstconnection;
    }

    public void setFirstconnection(boolean firstconnection) {
        this.firstconnection = firstconnection;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    
    
}