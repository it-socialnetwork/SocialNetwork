package com.socialnetwork.vywatch.Model;

import java.sql.Date;


import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;

import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;
@Entity
@Table(name="conversation")
@EntityListeners(AuditingEntityListener.class)
public class Conversation {
    @Id
    private String idconversation;
    private Date datecreatconv;
    private Date datelastmessage;

    public String getIdconversation() {
        return idconversation;
    }

    public void setIdconversation(String idconversation) {
        this.idconversation = idconversation;
    }

    public Date getDatecreatconv() {
        return datecreatconv;
    }

    public void setDatecreatconv(Date datecreatconv) {
        this.datecreatconv = datecreatconv;
    }

    public Date getDatelastmessage() {
        return datelastmessage;
    }

    public void setDatelastmessage(Date datelastmessage) {
        this.datelastmessage = datelastmessage;
    }

    
    
}
