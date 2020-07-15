package com.socialnetwork.vywatch.Model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
@Entity
@Table(name="userSubject")
@EntityListeners(AuditingEntityListener.class)
public class UserSubject implements Serializable {
    private int idListSub;
    private int idUser;

    public UserSubject() {
    }

    public UserSubject(int idListSub, int idUser) {
        this.idListSub = idListSub;
        this.idUser = idUser;
    }

    public int getIdListSub() {
        return this.idListSub;
    }

    public void setIdListSub(int idListSub) {
        this.idListSub = idListSub;
    }

    public int getIdUser() {
        return this.idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public UserSubject idListSub(int idListSub) {
        this.idListSub = idListSub;
        return this;
    }

    public UserSubject idUser(int idUser) {
        this.idUser = idUser;
        return this;
    }


}