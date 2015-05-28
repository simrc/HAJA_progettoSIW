package com.haja.models;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Created by alessio on 22/05/15.
 * Project: HAJA_progettoSIW
 * Package: com.haja.models
 */

@Entity
@Table(name = "orders")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Basic
    @Temporal(TemporalType.TIME)
    private Date creationDate;

    @Basic
    @Temporal(TemporalType.TIME)
    private Date closingDate;

    @Basic
    @Temporal(TemporalType.TIME)
    private Date evasionDate;

    @OneToMany(fetch = FetchType.LAZY, cascade=CascadeType.ALL)
    private List<OrderLine> orderLines;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Date getClosingDate() {
        return closingDate;
    }

    public void setClosingDate(Date closingDate) {
        this.closingDate = closingDate;
    }
    public Date getEvasionDate() {
        return evasionDate;
    }

    public void setEvasionDate(Date evasionDate) {
        this.evasionDate = evasionDate;
    }

    public List<OrderLine> getOrderLines() {
        return orderLines;
    }

    public void setOrderLines(List<OrderLine> orderLines) {
        this.orderLines = orderLines;
    }
}
