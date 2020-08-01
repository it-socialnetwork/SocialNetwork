package com.socialnetwork.vywatch.Model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
@Entity
@Table(name="Users")
@EntityListeners(AuditingEntityListener.class)
public class Users implements Serializable {


    private int idUser;
    private String lastname;
    private String firstname;
    private Date dateBirth;
    private String email;
    private String password;
    private boolean firstconnection;
    private String sexe;
    private String pseudo;


    public Users() {
    }


    public Users(int idUser, String lastname, String firstname, Date dateBirth, String email, String password, boolean firstconnection, String sexe, String pseudo) {
        this.idUser = idUser;
        this.lastname = lastname;
        this.firstname = firstname;
        this.dateBirth = dateBirth;
        this.email = email;
        this.password = password;
        this.firstconnection = firstconnection;
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

    public Users idUser(int idUser) {
        this.idUser = idUser;
        return this;
    }

    public Users lastname(String lastname) {
        this.lastname = lastname;
        return this;
    }

    public Users firstname(String firstname) {
        this.firstname = firstname;
        return this;
    }

    public Users dateBirth(Date dateBirth) {
        this.dateBirth = dateBirth;
        return this;
    }

    public Users email(String email) {
        this.email = email;
        return this;
    }

    public Users password(String password) {
        this.password = password;
        return this;
    }

    public Users firstconnection(boolean firstconnection) {
        this.firstconnection = firstconnection;
        return this;
    }

    public Users sexe(String sexe) {
        this.sexe = sexe;
        return this;
    }

    public Users pseudo(String pseudo) {
        this.pseudo = pseudo;
        return this;
    }


}