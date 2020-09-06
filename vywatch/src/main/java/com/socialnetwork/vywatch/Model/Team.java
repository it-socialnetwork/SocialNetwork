package com.socialnetwork.vywatch.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;


@Entity
@Table(name="team")
@EntityListeners(AuditingEntityListener.class)
public class Team {
    @Id
    private int idteam;
    private String nameteam;
    @Lob
    @Column(name = "image", columnDefinition="mediumblob")
    private byte[] image;
    private String description;
    private String pseudo;
    private String namesub;

    public int getIdteam() {
        return idteam;
    }

    public void setIdteam(int idteam) {
        this.idteam = idteam;
    }

    public String getNameteam() {
        return nameteam;
    }

    public void setNameteam(String nameteam) {
        this.nameteam = nameteam;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public String getNamesub() {
        return namesub;
    }

    public void setNamesub(String namesub) {
        this.namesub = namesub;
    }

    


}
