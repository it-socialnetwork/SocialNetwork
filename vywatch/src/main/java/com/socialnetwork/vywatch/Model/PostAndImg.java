package com.socialnetwork.vywatch.Model;

import java.util.Date;

public class PostAndImg {


    
    private int idpost;
    private String pseudo;
    private String text;
    private Date datepost;
    private byte[] picturepost;
    private int idteam;
    private byte[] pictureprofil;

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

    public byte[] getPictureprofil() {
        return pictureprofil;
    }

    public void setPictureprofil(byte[] pictureprofil) {
        this.pictureprofil = pictureprofil;
    }

    
}
