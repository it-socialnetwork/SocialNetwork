package com.socialnetwork.vywatch.Model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
@Entity
@Table(name="User")
@EntityListeners(AuditingEntityListener.class)
public class User implements Serializable {

    @Id
    private int idUser;
    private String lastname;
    private String firstname;
    private Date dateBirth;
    private String email;
    private String password;
    private boolean firstconnection;
    private String sexe;
    private String pseudo;


    public User() {
    }


    public User( String lastname, String firstname, Date dateBirth, String email, String password, String sexe, String pseudo) {
        this.lastname = lastname;
        this.firstname = firstname;
        this.dateBirth = dateBirth;
        this.email = email;
        this.password = password;
        this.sexe = sexe;
        this.pseudo = pseudo;
    }

    public int getIdUser() {
        return this.idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getLastname() {
        return this.lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFirstname() {
        return this.firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public Date getDateBirth() {
        return this.dateBirth;
    }

    public void setDateBirth(Date dateBirth) {
        this.dateBirth = dateBirth;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isFirstconnection() {
        return this.firstconnection;
    }

    public boolean getFirstconnection() {
        return this.firstconnection;
    }

    public void setFirstconnection(boolean firstconnection) {
        this.firstconnection = firstconnection;
    }

    public String getSexe() {
        return this.sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public String getPseudo() {
        return this.pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public User idUser(int idUser) {
        this.idUser = idUser;
        return this;
    }

    public User lastname(String lastname) {
        this.lastname = lastname;
        return this;
    }

    public User firstname(String firstname) {
        this.firstname = firstname;
        return this;
    }

    public User dateBirth(Date dateBirth) {
        this.dateBirth = dateBirth;
        return this;
    }

    public User email(String email) {
        this.email = email;
        return this;
    }

    public User password(String password) {
        this.password = password;
        return this;
    }

    public User firstconnection(boolean firstconnection) {
        this.firstconnection = firstconnection;
        return this;
    }

    public User sexe(String sexe) {
        this.sexe = sexe;
        return this;
    }

    public User pseudo(String pseudo) {
        this.pseudo = pseudo;
        return this;
    }


}