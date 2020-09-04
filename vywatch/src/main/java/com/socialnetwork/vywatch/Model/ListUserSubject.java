package com.socialnetwork.vywatch.Model;

public class ListUserSubject {
    private String pseudouser;
    private String namesubject;

    public String getPseudouser() {
        return pseudouser;
    }

    public void setPseudouser(String pseudouser) {
        this.pseudouser = pseudouser;
    }

    public String getNamesubject() {
        return namesubject;
    }

    public void setNamesubject(String namesubject) {
        this.namesubject = namesubject;
    }

    public ListUserSubject(String pseudouser, String namesubject) {
        this.pseudouser = pseudouser;
        this.namesubject = namesubject;
    }

    public ListUserSubject() {
    }

    
}