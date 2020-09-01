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
    private int idusersub;
    private int Idlist;
    private int iduser;

    public int getIdlist() {
        return Idlist;
    }

    public void setIdlist(int idlist) {
        Idlist = idlist;
    }

    public int getIduser() {
        return iduser;
    }

    public void setIduser(int idUser) {
        this.iduser = idUser;
    }

    public int getIdusersub() {
        return idusersub;
    }

    public void setIdusersub(int idusersub) {
        this.idusersub = idusersub;
    }

 
}