package com.socialnetwork.vywatch.Model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
@Entity
@Table(name="post")
@EntityListeners(AuditingEntityListener.class)
public class Comment {
    
    @Id
    private int idcomment;
    private String textcomment;
    @Lob
    @Column(name = "picturecomment", columnDefinition="mediumblob")
    private byte[] picturecomment;
    private Date datecomment;
    private int idpost;
    private String pseudo;

    public int getIdcomment() {
        return idcomment;
    }

    public void setIdcomment(int idcomment) {
        this.idcomment = idcomment;
    }

    public String getTextcomment() {
        return textcomment;
    }

    public void setTextcomment(String textcomment) {
        this.textcomment = textcomment;
    }

    public byte[] getPicturecomment() {
        return picturecomment;
    }

    public void setPicturecomment(byte[] picturecomment) {
        this.picturecomment = picturecomment;
    }

    public Date getDatecomment() {
        return datecomment;
    }

    public void setDatecomment(Date datecomment) {
        this.datecomment = datecomment;
    }

    public int getIdpost() {
        return idpost;
    }

    public void setIdpost(int idpost) {
        this.idpost = idpost;
    }

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }
   

    
}
