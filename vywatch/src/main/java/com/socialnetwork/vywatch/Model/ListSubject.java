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
    private int idListSub_listSubject;
    private String nameSubject_listSubject;
    private String imageSubject_listSubject;

    public int getIdListSub_listSubject() {
        return idListSub_listSubject;
    }

    public void setIdListSub_listSubject(int idListSub_listSubject) {
        this.idListSub_listSubject = idListSub_listSubject;
    }

    public String getNameSubject_listSubject() {
        return nameSubject_listSubject;
    }

    public void setNameSubject_listSubject(String nameSubject_listSubject) {
        this.nameSubject_listSubject = nameSubject_listSubject;
    }

    public String getImageSubject_listSubject() {
        return imageSubject_listSubject;
    }

    public void setImageSubject_listSubject(String imageSubject_listSubject) {
        this.imageSubject_listSubject = imageSubject_listSubject;
    }

    public ListSubject(int idListSub_listSubject, String nameSubject_listSubject, String imageSubject_listSubject) {
        this.idListSub_listSubject = idListSub_listSubject;
        this.nameSubject_listSubject = nameSubject_listSubject;
        this.imageSubject_listSubject = imageSubject_listSubject;
    }

    public ListSubject(){}
    
}