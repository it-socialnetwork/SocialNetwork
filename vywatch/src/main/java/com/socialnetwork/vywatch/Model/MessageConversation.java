package com.socialnetwork.vywatch.Model;


import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;

import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
@Entity
@Table(name="messageconversation")
@EntityListeners(AuditingEntityListener.class)
public class MessageConversation {
    @Id
    private int idmessconv;
    private String message;
    private int idconversation;

    public int getIdmessconv() {
        return idmessconv;
    }

    public void setIdmessconv(int idmessconv) {
        this.idmessconv = idmessconv;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getIdconversation() {
        return idconversation;
    }

    public void setIdconversation(int idconversation) {
        this.idconversation = idconversation;
    }

    
}
