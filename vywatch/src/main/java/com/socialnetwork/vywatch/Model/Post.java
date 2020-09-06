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
public class Post {
    
    
    @Id
    private int idpost;
    private String pseudo;
    private String text;
    private Date datepost;
    @Lob
    @Column(name = "picturepost", columnDefinition="mediumblob")
    private byte[] picturepost;
    private int idteam;
    
    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Date getDatepost() {
        return datepost;
    }

    public void setDatepost(Date datepost) {
        this.datepost = datepost;
    }

    public byte[] getPicturepost() {
        return picturepost;
    }

    public void setPicturepost(byte[] picturepost) {
        this.picturepost = picturepost;
    }

    public int getIdteam() {
        return idteam;
    }

    public void setIdteam(int idteam) {
        this.idteam = idteam;
    }

    public int getIdpost() {
        return idpost;
    }

    public void setIdpost(int idpost) {
        this.idpost = idpost;
    }

  

    
    
}
