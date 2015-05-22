package com.haja.models;

import javax.persistence.*;
import javax.validation.constraints.Min;

@NamedQuery(name = "Product.findAvailableProducts", query = "SELECT p FROM Product p WHERE p.quantity > 0")
@Entity
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Basic
    @Column(unique = true , nullable = false)
    private String name;

    @Basic
    private String description;

    @Basic
    @Min(value = 0)                 //da rivedere
    @Column(unique = true , nullable = false)
    private Double price;

    @Basic
    private Integer quantity;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

}