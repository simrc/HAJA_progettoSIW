package com.haja.models;

import javax.persistence.*;
import javax.validation.constraints.Pattern;

/**
 * Created by Lorenzo Goldoni on 19/05/15.
 */

@Entity
public class Supplier {

        @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        private Long id;

        /*Non richiesto dalle specifiche ma è una proprietà utile all'utente finale*/
        @Basic
        private String name;

        /*partita iva*/
        @Basic
        @Column(nullable = false)
        private String iva;

        @Basic
        @Column(unique = true , nullable = false)
        private String email;

        @Basic
        private String phone;

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

        public String getIva() {
                return iva;
        }

        public void setIva(String iva) {
                this.iva = iva;
        }

        public String getEmail() {
                return email;
        }

        public void setEmail(String email) {
                this.email = email;
        }

        public String getPhone() {
                return phone;
        }

        public void setPhone(String phone) {
                this.phone = phone;
        }


}
