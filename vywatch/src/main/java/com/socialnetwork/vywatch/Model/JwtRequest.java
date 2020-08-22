package com.socialnetwork.vywatch.Model;

import java.io.Serializable;
public class JwtRequest implements Serializable {
    private static final long serialVersionUID = 5926468583005150707L;
    private String pseudo;
    private String password;
    //need default constructor for JSON Parsing
    public JwtRequest()
    {
    }
    public JwtRequest(String pseudo, String password) {
        this.setPseudo(pseudo);
        this.setPassword(password);
    }
    public String getPseudo() {
    return this.pseudo;
    }
    public void setPseudo(String pseudo) {
    this.pseudo = pseudo;
    }
    public String getPassword() {
    return this.password;
    }
    public void setPassword(String password) {
    this.password = password;
    }
}