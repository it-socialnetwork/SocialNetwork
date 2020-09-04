package com.socialnetwork.vywatch.Model;

import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name="userteam")
@EntityListeners(AuditingEntityListener.class)
public class UserTeam {
    
private int iduser;
private int idteam;
@Id
private int iduserteam;

public int getIduser() {
    return iduser;
}

public void setIduser(int iduser) {
    this.iduser = iduser;
}

public int getIdteam() {
    return idteam;
}

public void setIdteam(int idteam) {
    this.idteam = idteam;
}

public int getIduserteam() {
    return iduserteam;
}

public void setIduserteam(int iduserteam) {
    this.iduserteam = iduserteam;
}


    
}
