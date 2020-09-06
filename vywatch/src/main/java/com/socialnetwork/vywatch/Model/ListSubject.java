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
    private String namesub;
    private String Imagesub;

    public String getNamesub() {
        return namesub;
    }

    public void setNamesub(String namesub) {
        this.namesub = namesub;
    }

    public String getImagesub() {
        return Imagesub;
    }

    public void setImagesub(String imagesub) {
        Imagesub = imagesub;
    }


}