package com.socialnetwork.vywatch.Model;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
@Entity
@Table(name="listsubject")
@EntityListeners(AuditingEntityListener.class)
public class ListSubject {
    @Id
    private int Idlist ;
    private String Namesub;
    private String Imagesub;

    public int getIdlist() {
        return Idlist;
    }

    public void setIdlist(int idlist) {
        Idlist = idlist;
    }

    public String getNamesub() {
        return Namesub;
    }

    public void setNamesub(String namesub) {
        Namesub = namesub;
    }

    public String getImagesub() {
        return Imagesub;
    }

    public void setImagesub(String imagesub) {
        Imagesub = imagesub;
    }


    
    

}