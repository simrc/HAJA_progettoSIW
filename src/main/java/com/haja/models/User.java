package com.haja.models;

import javax.persistence.*;
import java.util.Date;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Basic
    @Column(unique = true , nullable = false)
    private String firstName;

    @Basic
    @Column(unique = true , nullable = false)
    private String lastName;

    @Basic
    @Column(unique = true , nullable = false)
    private String email;

    @OneToOne(fetch = FetchType.EAGER, cascade=CascadeType.ALL)
    private Address address;


    @Column(nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dataIscrizione;


    public Date getDataIscrizione() {
        return dataIscrizione;
    }

    public void setDataIscrizione(Date dataIscrizione) {
        this.dataIscrizione = dataIscrizione;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName()
    {
        return firstName;
    }

    public void setFirstName(String name)
    {
        this.firstName = name;
    }

    public String getLastName()
    {
        return lastName;
    }

    public void setLastName(String lastName)
    {
        this.lastName = lastName;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

}