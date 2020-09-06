package com.socialnetwork.vywatch.Model;



import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
@Entity
@Table(name="usersubject")
@EntityListeners(AuditingEntityListener.class)
public class UserSubject {

    @Id
    private int idusersubject;
    private String namesub;
    private String pseudo;

    public int getIdusersubject() {
        return idusersubject;
    }

    public void setIdusersubject(int idusersubject) {
        this.idusersubject = idusersubject;
    }

    public String getNamesub() {
        return namesub;
    }

    public void setNamesub(String namesub) {
        this.namesub = namesub;
    }

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

 
    
    
 
}