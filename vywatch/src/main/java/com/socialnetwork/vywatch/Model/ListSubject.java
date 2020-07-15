package com.socialnetwork.vywatch.Model;

import java.io.Serializable;


import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
@Entity
@Table(name="Users")
@EntityListeners(AuditingEntityListener.class)
public class ListSubject implements Serializable{
    private int idListSub;
    private String nameSubject;

    public ListSubject() {
    }

    public ListSubject(int idListSub, String nameSubject) {
        this.idListSub = idListSub;
        this.nameSubject = nameSubject;
    }

    public int getIdListSub() {
        return this.idListSub;
    }

    public void setIdListSub(int idListSub) {
        this.idListSub = idListSub;
    }

    public String getNameSubject() {
        return this.nameSubject;
    }

    public void setNameSubject(String nameSubject) {
        this.nameSubject = nameSubject;
    }

    public ListSubject idListSub(int idListSub) {
        this.idListSub = idListSub;
        return this;
    }

    public ListSubject nameSubject(String nameSubject) {
        this.nameSubject = nameSubject;
        return this;
    }

    
   

}