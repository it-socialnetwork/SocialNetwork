package com.socialnetwork.vywatch.Model;

import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;



@Entity
@Table(name="friendlist")
@EntityListeners(AuditingEntityListener.class)
public class FriendList {
    
    private String pseudo;
    private int iduser_friend;
    @Id
    private int idfriendlist;

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    public int getIduser_friend() {
        return iduser_friend;
    }

    public void setIduser_friend(int iduser_friend) {
        this.iduser_friend = iduser_friend;
    }

    public int getIdfriendlist() {
        return idfriendlist;
    }

    public void setIdfriendlist(int idfriendlist) {
        this.idfriendlist = idfriendlist;
    }

    

    
}
