package com.socialnetwork.vywatch.Model;

import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;

import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
@Entity
@Table(name="messageconversation")
@EntityListeners(AuditingEntityListener.class)
public class UserConversation {
    @Id
    private int iduserconversation;
    private int idconversation;
    private String pseudo;

    public int getIduserconversation() {
        return iduserconversation;
    }

    public void setIduserconversation(int iduserconversation) {
        this.iduserconversation = iduserconversation;
    }

    public int getIdconversation() {
        return idconversation;
    }

    public void setIdconversation(int idconversation) {
        this.idconversation = idconversation;
    }

    public String getPseudo() {
        return pseudo;
    }

    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }

    
}
