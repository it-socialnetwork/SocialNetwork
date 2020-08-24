package com.socialnetwork.vywatch.Model;



import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
@Entity
@Table(name="userSubject")
@EntityListeners(AuditingEntityListener.class)
public class UserSubject {

    @Id
    private int idListSub_listSubject;
    private int idUser_User;

    public int getIdListSub_listSubject() {
        return idListSub_listSubject;
    }

    public void setIdListSub_listSubject(int idListSub_listSubject) {
        this.idListSub_listSubject = idListSub_listSubject;
    }

    public int getIdUser_User() {
        return idUser_User;
    }

    public void setIdUser_User(int idUser_User) {
        this.idUser_User = idUser_User;
    }

 
}