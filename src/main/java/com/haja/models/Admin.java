package com.haja.models;

import javax.persistence.*;

/**
 * Created by alessio on 19/05/15.
 * Project: HAJA_progettoSIW
 * Package: com.haja.models
 */

/*Amminisratore*/
@Entity
public class Admin {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(unique = true , nullable = false)
    private String username;

    @Column(nullable = false)
    private String password;

    public Admin(){}

    public Admin(String username, String password){
        this.username = username;
        this.password = password;
    }

    public Long getId(){
        return this.id;
    }

    public void setId(){
        this.id = id;
    }

    public String getUsername(){
        return this.username;
    }

    public void setUsername(String username){
        this.username = username;
    }

    public String getPassword(){
        return this.password;
    }

    public void setPassword(String password){
        this.password = password;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Admin)) return false;

        Admin admin = (Admin) o;

        if (!getId().equals(admin.getId())) return false;
        if (!getUsername().equals(admin.getUsername())) return false;
        return getPassword().equals(admin.getPassword());

    }

    @Override
    public int hashCode() {
        int result = getId().hashCode();
        result = 31 * result + getUsername().hashCode();
        result = 31 * result + getPassword().hashCode();
        return result;
    }
}